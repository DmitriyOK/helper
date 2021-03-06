package ru.avito.web;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.Marker;
import org.apache.logging.log4j.MarkerManager;
import org.apache.logging.log4j.message.Message;
import ru.avito.model.CallModel;


import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.io.*;
import java.net.URI;
import java.sql.SQLException;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

/**
 * Created by vananos.
 */

@Path("call")
public class Call implements WebDebugLogger{

    private final static Logger LOG = LogManager.getLogger();
    private final static Marker CALLS = MarkerManager.getMarker("CALLS");
    private final static Marker SQL_EXCEPTION = MarkerManager.getMarker("SQL_EXCEPTION");
    private final static Marker IO_EXCEPTION = MarkerManager.getMarker("IO_EXCEPTION");


    public String getEmptyCallsByUserId(int userId) {
        return null;
    }

    @GET
    @Path("getcallsforaccount")
    @Produces(MediaType.APPLICATION_JSON)
    public String getCallsByAccount(
            @QueryParam("userid") long avitoLink,
            @QueryParam("time") long time
    ) throws SQLException {

        this.debugLog(CALLS, String.format("Getting calls for account %s", avitoLink));

        String result="";
        ServerResponse response = new ServerResponse();
        try {
            result = CallModel.getCallRecordsAsJson(avitoLink, time);

        } catch (SQLException e) {
            LOG.error(SQL_EXCEPTION, String.format("Message: %s, Description: %s",e.getMessage(), e.toString()));
            response.setStatus(ServerResponse.STATUS_ERROR);
            response.setDescription(e.getMessage());

            return response.toJson();

        } catch (IOException e) {
            LOG.error(IO_EXCEPTION,String.format("Message: %s, Descprition: %s", e.getMessage(), e.toString()));
        }

        response.setStatus(ServerResponse.STATUS_OK);
        response.setResult(result);
        return response.toJson();
    }

    @GET
    @Path("update")
    @Produces(MediaType.APPLICATION_JSON)
    public String setCallInfo(
              @QueryParam(value = "uChainId") String uChainId
            , @QueryParam(value = "uAvitoUserId") long avitoUserId
            , @QueryParam(value = "question") int question_id
            , @QueryParam(value = "shop_category") int shop_category_id
            , @QueryParam(value = "isManager") boolean isManager)
         {
             this.debugLog(CALLS,String.format(
                     "Update calls for chain_id: %s. Params = {avito user_id: %s, question: %s, Shop category id: %s, isManager: %s",
                     uChainId, avitoUserId, question_id, shop_category_id, isManager));

             ServerResponse response = new ServerResponse();
            try {
                CallModel.updateCallRecord(avitoUserId, uChainId, question_id, shop_category_id, isManager);

               this.debugLog(CALLS, String.format("Update for chain_id: %s complete!", uChainId));

            } catch (SQLException e) {
                LOG.error(SQL_EXCEPTION, String.format("Message: %s, Description: %s", e.getMessage(), e.toString()));

                response.setStatus(ServerResponse.STATUS_ERROR);
                response.setDescription(e.getMessage());

                return response.toJson();
            }
            response.setStatus(ServerResponse.STATUS_OK);

            return response.toJson();
        }

    @Override
    public void debugLog(Marker marker, String message) {
        if (LOG.isDebugEnabled())
            LOG.debug(marker, message);
    }
}
