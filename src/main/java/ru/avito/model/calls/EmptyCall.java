package ru.avito.model.calls;


/**
 *
 * Класс описывает объект звонка с незаполненными полями.
 */
public class EmptyCall {

    private String chainId, comId;
    private long startTime;

    public EmptyCall(String chainId, String comId, long startTime) {
        this.chainId = chainId;
        this.comId = comId;
        this.startTime = startTime;
    }

    public String getChainId() {
        return chainId;
    }

    public String getComId() {
        return comId;
    }

    public long getStartTime() {
        return startTime;
    }

}
