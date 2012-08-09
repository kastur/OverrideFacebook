.class public Lcom/facebook/orca/database/DbFetchThreadHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadHandler.java"


# static fields
.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

.field private final c:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final d:Lcom/facebook/orca/database/DbAttachmentSerialization;

.field private final e:Lcom/facebook/orca/database/DbSharesSerialization;

.field private final f:Lcom/facebook/orca/database/DbCoordinatesSerialization;

.field private final g:Lcom/facebook/orca/database/DbMediaResourceSerialization;

.field private final h:Lcom/facebook/orca/database/DbDraftSerialization;

.field private final i:Lcom/facebook/orca/database/DbMessageCache;

.field private final j:Lcom/facebook/orca/database/DbClock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "action_id"

    aput-object v1, v0, v4

    const-string v1, "refetch_action_id"

    aput-object v1, v0, v5

    const-string v1, "last_visible_action_id"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "participants"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "former_participants"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "object_participants"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "senders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "single_recipient_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "single_recipient_user_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snippet_sender"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "admin_snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "timestamp_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "unread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pic_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "can_reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pic"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_subscribed"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "last_fetch_time_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "draft"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->k:[Ljava/lang/String;

    .line 380
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "msg_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->l:[Ljava/lang/String;

    .line 384
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "msg_id"

    aput-object v1, v0, v4

    const-string v1, "action_id"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    const-string v1, "sender"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timestamp_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timestamp_sent_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "msg_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "affected_users"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "attachments"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "shares"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "coordinates"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "offline_threading_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_non_authoritative"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pending_send_media_attachment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbAttachmentSerialization;Lcom/facebook/orca/database/DbSharesSerialization;Lcom/facebook/orca/database/DbCoordinatesSerialization;Lcom/facebook/orca/database/DbMediaResourceSerialization;Lcom/facebook/orca/database/DbDraftSerialization;Lcom/facebook/orca/database/DbMessageCache;Lcom/facebook/orca/database/DbClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    .line 65
    iput-object p4, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 66
    iput-object p5, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbAttachmentSerialization;

    .line 67
    iput-object p6, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->e:Lcom/facebook/orca/database/DbSharesSerialization;

    .line 68
    iput-object p7, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->f:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    .line 69
    iput-object p8, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->g:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    .line 70
    iput-object p9, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->h:Lcom/facebook/orca/database/DbDraftSerialization;

    .line 71
    iput-object p10, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:Lcom/facebook/orca/database/DbMessageCache;

    .line 72
    iput-object p11, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->j:Lcom/facebook/orca/database/DbClock;

    .line 73
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 197
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "threads"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "thread_id"

    aput-object v3, v2, v7

    const-string v3, "single_recipient_user_key=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 208
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 212
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 214
    return-object v5

    .line 212
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;Ljava/lang/String;I)Ljava/util/LinkedHashMap;
    .locals 25
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    const-string v2, "DbFetchThreadHandler.doMessagesQuery"

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v11

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 448
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 449
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v13

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->a()Ljava/lang/String;

    move-result-object v5

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;->b()[Ljava/lang/String;

    move-result-object v6

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    sget-object v4, Lcom/facebook/orca/database/DbFetchThreadHandler;->l:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 456
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {v4, v2}, Lcom/facebook/orca/database/DbMessageCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 459
    invoke-virtual {v12, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    if-nez v4, :cond_0

    .line 461
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 530
    invoke-virtual {v11}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v2

    .line 465
    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg_id IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    sget-object v4, Lcom/facebook/orca/database/DbFetchThreadHandler;->m:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 471
    :try_start_4
    const-string v2, "thread_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 472
    const-string v2, "msg_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 473
    const-string v2, "action_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 474
    const-string v2, "text"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 475
    const-string v2, "sender"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 476
    const-string v2, "timestamp_ms"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 477
    const-string v2, "timestamp_sent_ms"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 478
    const-string v2, "msg_type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 479
    const-string v2, "affected_users"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 480
    const-string v2, "attachments"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 481
    const-string v2, "shares"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 482
    const-string v2, "coordinates"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 483
    const-string v2, "offline_threading_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 484
    const-string v2, "source"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 485
    const-string v2, "is_non_authoritative"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 486
    const-string v2, "pending_send_media_attachment"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 488
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 490
    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 492
    :goto_2
    new-instance v23, Lcom/facebook/orca/threads/MessageBuilder;

    invoke-direct/range {v23 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/facebook/orca/threads/MessageBuilder;->c(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v23, v0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/facebook/orca/threads/MessageBuilder;->a(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/facebook/orca/threads/MessageBuilder;->b(J)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->a(I)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move-object/from16 v23, v0

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->d:Lcom/facebook/orca/database/DbAttachmentSerialization;

    move-object/from16 v23, v0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/facebook/orca/database/DbAttachmentSerialization;->a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->e:Lcom/facebook/orca/database/DbSharesSerialization;

    move-object/from16 v23, v0

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->f:Lcom/facebook/orca/database/DbCoordinatesSerialization;

    move-object/from16 v23, v0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/facebook/orca/database/DbCoordinatesSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/orca/threads/MessageBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/MessageBuilder;->a(Z)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->g:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    move-object/from16 v22, v0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/facebook/orca/database/DbMediaResourceSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/MessageBuilder;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/MessageBuilder;->s()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 520
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:Lcom/facebook/orca/database/DbMessageCache;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/facebook/orca/database/DbMessageCache;->a(Lcom/facebook/orca/threads/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    .line 524
    :catchall_2
    move-exception v2

    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 490
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 524
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 530
    invoke-virtual {v11}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v12
.end method

.method private b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 415
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v0

    .line 416
    const-string v1, "thread_id"

    invoke-static {v1, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 417
    cmp-long v1, p2, v3

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "timestamp_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 420
    :cond_0
    cmp-long v1, p4, v3

    if-eqz v1, :cond_1

    .line 421
    const-string v1, "timestamp_ms"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 423
    :cond_1
    const-string v1, "timestamp_ms DESC"

    invoke-direct {p0, v0, v1, p6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;
    .locals 29
    .parameter

    .prologue
    .line 282
    const/4 v11, 0x0

    .line 283
    const-wide/16 v9, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "threads"

    sget-object v3, Lcom/facebook/orca/database/DbFetchThreadHandler;->k:[Ljava/lang/String;

    const-string v4, "thread_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 287
    :try_start_0
    const-string v1, "thread_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 288
    const-string v2, "action_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 289
    const-string v3, "refetch_action_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 290
    const-string v3, "last_visible_action_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 291
    const-string v3, "name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 292
    const-string v3, "participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 293
    const-string v3, "former_participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 294
    const-string v3, "object_participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 295
    const-string v3, "senders"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 296
    const-string v3, "single_recipient_thread"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 297
    const-string v3, "snippet"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 298
    const-string v3, "snippet_sender"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 299
    const-string v3, "admin_snippet"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 300
    const-string v3, "timestamp_ms"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 301
    const-string v3, "unread"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 302
    const-string v3, "pic_hash"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 303
    const-string v3, "can_reply_to"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 304
    const-string v3, "pic"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 305
    const-string v3, "single_recipient_user_key"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 306
    const-string v3, "last_fetch_time_ms"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 307
    const-string v3, "is_subscribed"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 308
    const-string v3, "folder"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 309
    const-string v3, "draft"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 311
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 312
    new-instance v3, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 313
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 314
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 315
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 316
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 317
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 320
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->c:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 334
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 335
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 336
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 337
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 338
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 339
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 340
    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 341
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 344
    :cond_1
    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 345
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 346
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 347
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threads/FolderName;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->h:Lcom/facebook/orca/database/DbDraftSerialization;

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbDraftSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 349
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    move-wide v11, v1

    move-object v13, v3

    .line 352
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 355
    if-nez v13, :cond_6

    .line 356
    const/4 v1, 0x0

    .line 377
    :goto_5
    return-object v1

    .line 334
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 338
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 340
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 346
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 352
    :catchall_0
    move-exception v1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v1

    .line 359
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 360
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    const/4 v4, 0x0

    const-string v5, "thread_id"

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "msg_type"

    const/16 v6, 0x385

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "timestamp_ms"

    sget-wide v6, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a([Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v6

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/database/DbFetchThreadHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "thread_id"

    aput-object v7, v4, v5

    invoke-virtual {v6}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "thread_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 370
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 377
    new-instance v1, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;

    invoke-virtual {v13}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    invoke-direct {v1, v2, v11, v12}, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;-><init>(Lcom/facebook/orca/threads/ThreadSummary;J)V

    goto :goto_5

    .line 374
    :catchall_1
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_8
    move-object v13, v11

    move-wide v11, v9

    goto/16 :goto_4
.end method


# virtual methods
.method final a(Lcom/facebook/orca/users/UserKey;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 190
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/server/FetchMoreMessagesResult;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct/range {p0 .. p6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 168
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    new-instance v2, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v2, p1, v1, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 176
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/orca/server/FetchMoreMessagesResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0
.end method

.method final a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/orca/server/FetchThreadResult;->a:Lcom/facebook/orca/server/FetchThreadResult;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->d(Ljava/lang/String;)Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;

    move-result-object v7

    .line 79
    if-nez v7, :cond_0

    .line 80
    sget-object v0, Lcom/facebook/orca/server/FetchThreadResult;->a:Lcom/facebook/orca/server/FetchThreadResult;

    .line 132
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v8, v7, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;->a:Lcom/facebook/orca/threads/ThreadSummary;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move v6, p2

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->b(Ljava/lang/String;JJI)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 88
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 89
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 90
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->z()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 93
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 100
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    .line 103
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 116
    :goto_3
    const/4 v0, 0x0

    .line 117
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v2, v5, v0}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 130
    invoke-virtual {v3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 131
    iget-object v2, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->j:Lcom/facebook/orca/database/DbClock;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/facebook/orca/database/DbClock;->a(J)V

    .line 132
    :cond_4
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    const/4 v5, 0x0

    iget-wide v6, v7, Lcom/facebook/orca/database/DbFetchThreadHandler$ThreadSummaryResult;->b:J

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto/16 :goto_0

    .line 106
    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 107
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v6

    if-nez v6, :cond_6

    .line 108
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v2

    .line 112
    :cond_7
    invoke-virtual {v8}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_3
.end method

.method final a(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadHandler;->i:Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/database/DbMessageCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v0, "msg_id"

    invoke-static {v0, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
    const-string v1, "offline_threading_id"

    invoke-static {v1, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    .line 231
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 428
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    const/4 v1, 0x0

    const-string v2, "msg_type"

    const/16 v3, 0x384

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "thread_id"

    invoke-static {v1, p1}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a([Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v0

    .line 433
    const-string v1, "timestamp_sent_ms"

    invoke-direct {p0, v0, v1, v4}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    goto :goto_0
.end method
