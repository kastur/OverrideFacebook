.class public Lcom/facebook/orca/database/DbFetchThreadsHandler;
.super Ljava/lang/Object;
.source "DbFetchThreadsHandler.java"


# static fields
.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

.field private final c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final d:Lcom/facebook/orca/database/DbParticipantsSerialization;

.field private final e:Lcom/facebook/orca/database/DbDraftSerialization;

.field private final f:Lcom/facebook/orca/database/DbClock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "t.thread_id"

    aput-object v1, v0, v3

    const-string v1, "t.action_id"

    aput-object v1, v0, v4

    const-string v1, "t.refetch_action_id"

    aput-object v1, v0, v5

    const-string v1, "t.last_visible_action_id"

    aput-object v1, v0, v6

    const-string v1, "t.name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "t.participants"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "t.former_participants"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "t.object_participants"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t.senders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "t.single_recipient_thread"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "t.single_recipient_user_key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "t.snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "t.snippet_sender"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "t.admin_snippet"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "t.timestamp_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "t.unread"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "t.pic_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "t.can_reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "t.pic"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t.is_subscribed"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "t.folder"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "t.draft"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->g:[Ljava/lang/String;

    .line 389
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "unread_count"

    aput-object v1, v0, v3

    const-string v1, "unseen_count"

    aput-object v1, v0, v4

    const-string v1, "last_seen_time"

    aput-object v1, v0, v5

    const-string v1, "last_action_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/database/DbFetchThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Lcom/facebook/orca/database/DbParticipantsSerialization;Lcom/facebook/orca/database/DbDraftSerialization;Lcom/facebook/orca/database/DbClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iput-object p2, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    .line 59
    iput-object p3, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 60
    iput-object p4, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    .line 61
    iput-object p5, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->e:Lcom/facebook/orca/database/DbDraftSerialization;

    .line 62
    iput-object p6, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->f:Lcom/facebook/orca/database/DbClock;

    .line 63
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 397
    const-string v0, "DbFetchThreadsHandler.getFolderCounts"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v8

    .line 398
    const-string v0, "folder=\'%1$s\'"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folder_counts"

    sget-object v2, Lcom/facebook/orca/database/DbFetchThreadsHandler;->h:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 402
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    :goto_0
    return-object v0

    .line 409
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v4

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-virtual {v8}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0
.end method

.method private static a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;I)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 380
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 381
    const/4 v0, 0x0

    .line 382
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ge v0, p1, :cond_0

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/FolderName;JI)Ljava/util/LinkedHashMap;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/FolderName;",
            "JI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "DbFetchThreadsHandler.doThreadListQuery"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b(Lcom/facebook/orca/threads/FolderName;JI)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b(Ljava/util/LinkedHashMap;)V

    .line 228
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 229
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 230
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->x()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 234
    return-object v2
.end method

.method private static a(Ljava/util/LinkedHashMap;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/users/UserKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v2

    .line 134
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 135
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 136
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->z()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 141
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_4
    return-object v2
.end method

.method private b(Lcom/facebook/orca/threads/FolderName;JI)Ljava/util/LinkedHashMap;
    .locals 32
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/FolderName;",
            "JI)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 253
    const-string v4, "folders AS f INNER JOIN threads AS t ON f.thread_id = t.thread_id"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a()Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v7

    .line 256
    const-string v4, "f.folder"

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/threads/FolderName;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 257
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_0

    .line 258
    const-string v4, "f.timestamp_ms"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a(Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)V

    .line 261
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/facebook/orca/database/DbFetchThreadsHandler;->g:[Ljava/lang/String;

    invoke-virtual {v7}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "f.timestamp_ms DESC"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 272
    :try_start_0
    const-string v3, "thread_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 273
    const-string v3, "action_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 274
    const-string v3, "refetch_action_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 275
    const-string v3, "last_visible_action_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 276
    const-string v3, "name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 277
    const-string v3, "participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 278
    const-string v3, "former_participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 279
    const-string v3, "object_participants"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 280
    const-string v3, "senders"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 281
    const-string v3, "single_recipient_thread"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 282
    const-string v3, "snippet"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 283
    const-string v3, "snippet_sender"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 284
    const-string v3, "admin_snippet"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 285
    const-string v3, "timestamp_ms"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 286
    const-string v3, "unread"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 287
    const-string v3, "pic_hash"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 288
    const-string v3, "can_reply_to"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 289
    const-string v3, "pic"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 290
    const-string v3, "single_recipient_user_key"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 291
    const-string v3, "is_subscribed"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 292
    const-string v3, "folder"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 293
    const-string v3, "draft"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 295
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 296
    new-instance v28, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    invoke-direct/range {v28 .. v28}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;-><init>()V

    .line 297
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 298
    invoke-virtual/range {v28 .. v29}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 299
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 300
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 301
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 302
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 305
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->c(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->b(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->d:Lcom/facebook/orca/database/DbParticipantsSerialization;

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbParticipantsSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 320
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 321
    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 322
    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 323
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 324
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 325
    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/StringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 326
    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 327
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 328
    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 330
    :cond_2
    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    .line 331
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 332
    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 333
    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/threads/FolderName;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->e:Lcom/facebook/orca/database/DbDraftSerialization;

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/facebook/orca/database/DbDraftSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    .line 335
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 338
    :catchall_0
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3

    .line 320
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 324
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 326
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 332
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 338
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 340
    return-object v12
.end method

.method private b(Ljava/util/LinkedHashMap;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 352
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "thread_id IN "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v4

    aput-object v4, v0, v6

    const-string v4, "msg_type"

    const/16 v5, 0x385

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v4, 0x2

    const-string v5, "timestamp_ms"

    sget-wide v8, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/facebook/orca/common/util/SqlQueryBuilder;->a([Lcom/facebook/orca/common/util/SqlQueryBuilder$Expression;)Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;

    move-result-object v5

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v6

    invoke-virtual {v5}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/orca/common/util/SqlQueryBuilder$AndExpression;->b()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "thread_id"

    move-object v8, v7

    move-object v9, v7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 369
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 375
    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;
    .locals 7
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a()Lcom/facebook/orca/threads/FolderName;

    move-result-object v2

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v2}, Lcom/facebook/orca/database/DbProperties;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v1

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v5

    .line 155
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v3

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;JI)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {v2}, Lcom/facebook/orca/database/DbFolders;->a(Lcom/facebook/orca/threads/FolderName;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 165
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 170
    new-instance v3, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 171
    invoke-static {v1}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/LinkedHashMap;)Ljava/util/Set;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 174
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0
.end method

.method final a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;
    .locals 14
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-wide/16 v11, -0x1

    .line 67
    const-string v0, "DbFetchThreadsHandler.fetchThreadListFromDb"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v10

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v3

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v3, v5, v6}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v6

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;Z)Z

    move-result v0

    .line 74
    iget-object v3, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->c:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-static {v1}, Lcom/facebook/orca/database/DbProperties;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v5

    const-wide/16 v8, -0x1

    invoke-virtual {v3, v5, v8, v9}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->a(Lcom/facebook/orca/common/util/TypedKey;J)J

    move-result-wide v8

    .line 77
    cmp-long v3, v6, v11

    if-nez v3, :cond_0

    .line 79
    invoke-static {v1}, Lcom/facebook/orca/server/FetchThreadListResult;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    invoke-virtual {v10}, Lcom/facebook/orca/debug/Tracer;->c()J

    :goto_0
    return-object v0

    .line 83
    :cond_0
    if-eqz v0, :cond_3

    .line 84
    :try_start_1
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 90
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    const-wide/16 v11, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v3, v11, v12, v5}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;JI)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 97
    invoke-static {v5}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/LinkedHashMap;)Ljava/util/Set;

    move-result-object v3

    .line 98
    iget-object v11, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->b:Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {v11, v3}, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 101
    invoke-static {v1}, Lcom/facebook/orca/database/DbFolders;->a(Lcom/facebook/orca/threads/FolderName;)Ljava/lang/String;

    move-result-object v11

    .line 102
    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 104
    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    .line 107
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v5

    invoke-static {v2, v5}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Ljava/util/Collection;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 109
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    invoke-direct {v2, v5, v4}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 111
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v4

    .line 114
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 115
    iget-object v11, p0, Lcom/facebook/orca/database/DbFetchThreadsHandler;->f:Lcom/facebook/orca/database/DbClock;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/facebook/orca/database/DbClock;->a(J)V

    .line 118
    :cond_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lcom/facebook/orca/server/FetchThreadListResult;->a(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;JJ)Lcom/facebook/orca/server/FetchThreadListResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 128
    invoke-virtual {v10}, Lcom/facebook/orca/debug/Tracer;->c()J

    goto :goto_0

    .line 86
    :cond_3
    :try_start_2
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0
.end method
