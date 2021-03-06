/**
 * This class is generated by jOOQ
 */
package ru.avito.jooqdbmodel;


import org.jooq.ForeignKey;
import org.jooq.Identity;
import org.jooq.UniqueKey;
import org.jooq.impl.AbstractKeys;
import ru.avito.jooqdbmodel.tables.*;
import ru.avito.jooqdbmodel.tables.records.*;

import javax.annotation.Generated;


/**
 * A class modelling foreign key relationships between tables of the <code>avito</code>
 * schema
 */
@Generated(
        value = {
                "http://www.jooq.org",
                "jOOQ version:3.8.0"
        },
        comments = "This class is generated by jOOQ"
)
@SuppressWarnings({"all", "unchecked", "rawtypes"})
public class Keys {

    // -------------------------------------------------------------------------
    // IDENTITY definitions
    // -------------------------------------------------------------------------

    public static final Identity<CallsRecord, Integer> IDENTITY_CALLS = Identities0.IDENTITY_CALLS;
    public static final Identity<CommentsRecord, Integer> IDENTITY_COMMENTS = Identities0.IDENTITY_COMMENTS;
    public static final Identity<QuestionRecord, Integer> IDENTITY_QUESTION = Identities0.IDENTITY_QUESTION;
    public static final Identity<ShopCategoryRecord, Integer> IDENTITY_SHOP_CATEGORY = Identities0.IDENTITY_SHOP_CATEGORY;
    public static final Identity<UsersRecord, Integer> IDENTITY_USERS = Identities0.IDENTITY_USERS;

    // -------------------------------------------------------------------------
    // UNIQUE and PRIMARY KEY definitions
    // -------------------------------------------------------------------------

    public static final UniqueKey<CallsRecord> KEY_CALLS_PRIMARY = UniqueKeys0.KEY_CALLS_PRIMARY;
    public static final UniqueKey<CommentsRecord> KEY_COMMENTS_PRIMARY = UniqueKeys0.KEY_COMMENTS_PRIMARY;
    public static final UniqueKey<QuestionRecord> KEY_QUESTION_PRIMARY = UniqueKeys0.KEY_QUESTION_PRIMARY;
    public static final UniqueKey<ShopCategoryRecord> KEY_SHOP_CATEGORY_PRIMARY = UniqueKeys0.KEY_SHOP_CATEGORY_PRIMARY;
    public static final UniqueKey<UsersRecord> KEY_USERS_PRIMARY = UniqueKeys0.KEY_USERS_PRIMARY;

    // -------------------------------------------------------------------------
    // FOREIGN KEY definitions
    // -------------------------------------------------------------------------

    public static final ForeignKey<CallsRecord, UsersRecord> CALLS_IBFK_1 = ForeignKeys0.CALLS_IBFK_1;
    public static final ForeignKey<CallsRecord, QuestionRecord> CALLS_IBFK_2 = ForeignKeys0.CALLS_IBFK_2;
    public static final ForeignKey<CallsRecord, ShopCategoryRecord> CALLS_IBFK_3 = ForeignKeys0.CALLS_IBFK_3;
    public static final ForeignKey<CommentsRecord, UsersRecord> COMMENTS_IBFK_1 = ForeignKeys0.COMMENTS_IBFK_1;

    // -------------------------------------------------------------------------
    // [#1459] distribute members to avoid static initialisers > 64kb
    // -------------------------------------------------------------------------

    private static class Identities0 extends AbstractKeys {
        public static Identity<CallsRecord, Integer> IDENTITY_CALLS = createIdentity(Calls.CALLS, Calls.CALLS.ID);
        public static Identity<CommentsRecord, Integer> IDENTITY_COMMENTS = createIdentity(Comments.COMMENTS, Comments.COMMENTS.ID);
        public static Identity<QuestionRecord, Integer> IDENTITY_QUESTION = createIdentity(Question.QUESTION, Question.QUESTION.ID);
        public static Identity<ShopCategoryRecord, Integer> IDENTITY_SHOP_CATEGORY = createIdentity(ShopCategory.SHOP_CATEGORY, ShopCategory.SHOP_CATEGORY.ID);
        public static Identity<UsersRecord, Integer> IDENTITY_USERS = createIdentity(Users.USERS, Users.USERS.ID);
    }

    private static class UniqueKeys0 extends AbstractKeys {
        public static final UniqueKey<CallsRecord> KEY_CALLS_PRIMARY = createUniqueKey(Calls.CALLS, "KEY_calls_PRIMARY", Calls.CALLS.ID);
        public static final UniqueKey<CommentsRecord> KEY_COMMENTS_PRIMARY = createUniqueKey(Comments.COMMENTS, "KEY_comments_PRIMARY", Comments.COMMENTS.ID);
        public static final UniqueKey<QuestionRecord> KEY_QUESTION_PRIMARY = createUniqueKey(Question.QUESTION, "KEY_question_PRIMARY", Question.QUESTION.ID);
        public static final UniqueKey<ShopCategoryRecord> KEY_SHOP_CATEGORY_PRIMARY = createUniqueKey(ShopCategory.SHOP_CATEGORY, "KEY_shop_category_PRIMARY", ShopCategory.SHOP_CATEGORY.ID);
        public static final UniqueKey<UsersRecord> KEY_USERS_PRIMARY = createUniqueKey(Users.USERS, "KEY_users_PRIMARY", Users.USERS.ID);
    }

    private static class ForeignKeys0 extends AbstractKeys {
        public static final ForeignKey<CallsRecord, UsersRecord> CALLS_IBFK_1 = createForeignKey(ru.avito.jooqdbmodel.Keys.KEY_USERS_PRIMARY, Calls.CALLS, "calls_ibfk_1", Calls.CALLS.USER_ID);
        public static final ForeignKey<CallsRecord, QuestionRecord> CALLS_IBFK_2 = createForeignKey(ru.avito.jooqdbmodel.Keys.KEY_QUESTION_PRIMARY, Calls.CALLS, "calls_ibfk_2", Calls.CALLS.QUESTION_ID);
        public static final ForeignKey<CallsRecord, ShopCategoryRecord> CALLS_IBFK_3 = createForeignKey(ru.avito.jooqdbmodel.Keys.KEY_SHOP_CATEGORY_PRIMARY, Calls.CALLS, "calls_ibfk_3", Calls.CALLS.SHOP_CATEGORY_ID);
        public static final ForeignKey<CommentsRecord, UsersRecord> COMMENTS_IBFK_1 = createForeignKey(ru.avito.jooqdbmodel.Keys.KEY_USERS_PRIMARY, Comments.COMMENTS, "comments_ibfk_1", Comments.COMMENTS.USER_ID);
    }
}
