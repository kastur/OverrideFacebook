.class public Lcom/facebook/orca/database/DbServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "DbServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/database/DbFetchThreadsHandler;

.field private final c:Lcom/facebook/orca/database/DbFetchThreadHandler;

.field private final d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

.field private final e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

.field private final f:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

.field private final g:Landroid/database/sqlite/SQLiteDatabase;

.field private final h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final i:Lcom/facebook/orca/appconfig/AppConfigSerialization;

.field private final j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

.field private final k:Lcom/facebook/orca/database/DbCache;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/database/DbFetchThreadsHandler;Lcom/facebook/orca/database/DbFetchThreadHandler;Lcom/facebook/orca/database/DbInsertThreadsHandler;Lcom/facebook/orca/database/DbInsertThreadUsersHandler;Lcom/facebook/orca/database/DbThreadsPropertyUtil;Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/appconfig/AppConfigSerialization;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/database/DbCache;)V
    .locals 1
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
    .line 90
    const-string v0, "DbServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/facebook/orca/database/DbServiceHandler;->a:Lcom/facebook/orca/cache/DataCache;

    .line 92
    iput-object p2, p0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    .line 93
    iput-object p3, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    .line 94
    iput-object p4, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    .line 95
    iput-object p5, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    .line 96
    iput-object p6, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    .line 97
    iput-object p7, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    iput-object p8, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 99
    iput-object p9, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    .line 100
    iput-object p10, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    .line 101
    iput-object p11, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/database/DbCache;

    .line 102
    return-void
.end method

.method private a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 613
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 615
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    :cond_0
    const/4 p2, 0x0

    .line 636
    :cond_1
    :goto_0
    return-object p2

    .line 620
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq v0, v1, :cond_1

    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/database/DbServiceHandler;->b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 628
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/orca/database/DbServiceHandler;->c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    .line 631
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 636
    new-instance p2, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {p2, v1, v0}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 187
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/NewMessageResult;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 189
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "threadId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Lcom/facebook/orca/server/OperationResult;->g()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hasMoreQueuedMessages"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    return-object p2

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/database/DbCache;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbCache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a()V

    .line 859
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->k:Lcom/facebook/orca/database/DbCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbCache;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 832
    if-nez p1, :cond_0

    .line 841
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 836
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->z:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 837
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 838
    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_1

    .line 840
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/appconfig/AppConfig;)V
    .locals 4
    .parameter

    .prologue
    .line 822
    if-nez p1, :cond_0

    .line 829
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 826
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->y:Lcom/facebook/orca/prefs/PrefKey;

    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->i:Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-static {p1}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 827
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 828
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private static a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 705
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne p0, v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 644
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    .line 645
    invoke-static {v0, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/DataFreshnessParam;Lcom/facebook/orca/server/FetchThreadResult;)Z

    move-result v0

    .line 648
    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-object p2

    .line 654
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 657
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 663
    :goto_1
    const-wide/16 v0, -0x1

    .line 664
    if-eqz v2, :cond_2

    .line 665
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    .line 668
    :cond_2
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 675
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 676
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_thread"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/orca/server/FetchThreadResult;

    .line 680
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0, p2, v4}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 683
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 684
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 690
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 693
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    move-object p2, v0

    goto/16 :goto_0

    .line 686
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move-object v2, v5

    goto/16 :goto_1
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 852
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 848
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->e(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    goto :goto_1

    .line 851
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    goto :goto_0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-object p2

    .line 725
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v8

    .line 726
    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v7

    .line 727
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v0

    .line 729
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v2

    .line 730
    sub-int v6, v0, v2

    .line 733
    if-lez v6, :cond_0

    .line 737
    invoke-virtual {v7}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 739
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 745
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 746
    const-string v2, "fetchMoreMessagesParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 747
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_more_messages"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 752
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, p2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V

    .line 756
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->j:Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {v1, v7, v0}, Lcom/facebook/orca/threads/MessagesCollectionMerger;->b(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 761
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p2}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 16
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 216
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 217
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v2

    .line 219
    const-string v3, "DbServiceHandler.handleFetchThreadList"

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v15

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v3

    .line 227
    sget-object v4, Lcom/facebook/orca/database/DbServiceHandler$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 243
    const/4 v2, 0x0

    .line 248
    :goto_0
    if-eqz v2, :cond_2

    .line 250
    invoke-static {v3}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 301
    :goto_1
    invoke-virtual {v15}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v1

    .line 229
    :pswitch_0
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    :pswitch_1
    const/4 v2, 0x1

    .line 234
    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {v3}, Lcom/facebook/orca/server/FetchThreadListResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v2

    .line 253
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    const/4 v4, 0x1

    .line 256
    :goto_2
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v6

    sget-object v7, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v6

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v6, v2, v3}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 263
    const-string v6, "fetchThreadListParams"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 265
    new-instance v2, Lcom/facebook/orca/server/OperationParams;

    invoke-direct {v2, v5, v3}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    move-object v9, v0

    .line 268
    const-string v2, "DbServiceHandler.handleFetchThreadList#insertData"

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v5, v9}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListResult;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v9}, Lcom/facebook/orca/server/FetchThreadListResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 278
    if-eqz v4, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v13

    .line 284
    new-instance v1, Lcom/facebook/orca/server/FetchThreadListResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->c()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v8

    invoke-virtual {v9}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v9

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->j()Z

    move-result v10

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v11

    invoke-virtual {v13}, Lcom/facebook/orca/server/FetchThreadListResult;->k()J

    move-result-wide v13

    invoke-direct/range {v1 .. v14}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    .line 296
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    goto/16 :goto_1

    .line 253
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 256
    :cond_4
    const-wide/16 v2, -0x1

    goto/16 :goto_3

    .line 275
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    :catchall_1
    move-exception v1

    invoke-virtual {v15}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v1

    :cond_5
    move-object v1, v3

    goto/16 :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 310
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 313
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->b:Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbFetchThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 317
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 319
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 321
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreThreadsResult;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 331
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 332
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 333
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v2

    .line 334
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v3

    .line 335
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 337
    const-string v4, "DbServiceHandler.handleFetchThread"

    invoke-static {v4}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v4

    .line 340
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 344
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    .line 358
    :goto_0
    sget-object v5, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v2, v5, :cond_2

    .line 359
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 400
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->c()J

    return-object v0

    .line 348
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 349
    iget-object v5, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v5, v1, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    goto :goto_0

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userkey specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 362
    :cond_2
    :try_start_2
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_3

    .line 365
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_3
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 369
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 372
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 374
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 375
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 378
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    :try_start_4
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 386
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v1

    .line 388
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 395
    :goto_2
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    .line 380
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 390
    :cond_6
    new-instance v1, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/server/FetchThreadResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_2
.end method

.method protected final d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 109
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 111
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 114
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 119
    return-object v1

    .line 117
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected final e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 128
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    const-string v1, "outgoingMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/threads/Message;)V

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 132
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/facebook/orca/database/DbServiceHandler;->a()V

    .line 167
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/database/DbFetchThreadHandler;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 170
    if-nez v2, :cond_0

    .line 171
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-string v3, "outgoingMessage"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 177
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbServiceHandler;->a(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/orca/database/DbServiceHandler$SendMessageException;-><init>(Ljava/lang/Throwable;Lcom/facebook/orca/threads/Message;B)V

    throw v1
.end method

.method protected final g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 204
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 206
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 207
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 208
    return-object v1
.end method

.method protected final h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 463
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 464
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    .line 465
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 466
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 469
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 474
    return-object v1

    .line 472
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected final i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 482
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 488
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/MarkThreadParams;)V

    .line 490
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 491
    return-object v0
.end method

.method protected final j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 499
    const-string v1, "readReceiptParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReadReceiptParams;

    .line 500
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/ReadReceiptParams;)V

    .line 502
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReadReceiptParams;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/facebook/orca/server/ReceiptResult;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/server/ReceiptResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 507
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 515
    const-string v1, "deliveredReceiptParms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeliveredReceiptParams;

    .line 516
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeliveredReceiptParams;)V

    .line 518
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/DeliveredReceiptParams;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;I)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    .line 520
    new-instance v1, Lcom/facebook/orca/server/ReceiptResult;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/orca/server/ReceiptResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 523
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 531
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 532
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 533
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteThreadParams;)V

    .line 534
    return-object v1
.end method

.method protected final m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    .line 541
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 542
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 545
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->g()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 546
    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 555
    new-instance v1, Lcom/facebook/orca/server/DeleteMessagesParams;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/facebook/orca/server/DeleteMessagesParams;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    .line 558
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 559
    const-string v4, "deleteMessagesParams"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 560
    new-instance v1, Lcom/facebook/orca/server/OperationParams;

    const-string v4, "delete_messages"

    invoke-direct {v1, v4, v0}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 562
    invoke-interface {p2, v1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v7}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteMessagesParams;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v1

    .line 568
    const-string v4, "message_offline_threading_ids"

    invoke-static {v0, v4, v1}, Lcom/facebook/orca/server/OperationResultUtil;->a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v8

    .line 574
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    new-instance v1, Lcom/facebook/orca/server/DeleteThreadParams;

    invoke-virtual {v7}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/server/DeleteThreadParams;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/DeleteThreadParams;)V

    .line 581
    const-string v0, "delete_thread"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/facebook/orca/server/OperationResultUtil;->a(Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 583
    :goto_2
    return-object v0

    .line 564
    :cond_3
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v8

    goto :goto_2
.end method

.method protected final n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 590
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 591
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 593
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchThreadResult;)V

    .line 596
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->e:Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;->a(Ljava/util/List;)V

    .line 597
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 601
    return-object v1

    .line 599
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected final o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "draft"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    .line 142
    iget-object v2, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Ljava/lang/String;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 143
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 775
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/Message;

    .line 778
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    .line 779
    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->SMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->v()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/Message$ChannelSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/orca/threads/Message$ChannelSource;->MMS:Lcom/facebook/orca/threads/Message$ChannelSource;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->v()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/Message$ChannelSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    :cond_0
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    .line 785
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/database/DbProperties;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/database/DbThreadPropertyKey;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->f:Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/database/DbThreadsPropertyUtil;->b(Lcom/facebook/orca/common/util/TypedKey;Z)V

    .line 788
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    .line 794
    iget-object v1, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/NewMessageResult;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    .line 795
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 814
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 815
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 816
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Landroid/os/Bundle;)V

    .line 817
    const-string v0, "rollouts"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->b(Landroid/os/Bundle;)V

    .line 818
    return-object v1
.end method

.method protected final u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 408
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 410
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    .line 411
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    .line 413
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->b()J

    move-result-wide v2

    .line 414
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->c()J

    move-result-wide v4

    .line 415
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreMessagesParams;->d()I

    move-result v6

    .line 417
    const-string v0, "DbServiceHandler.handleFetchThread"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v7

    .line 420
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Ljava/lang/String;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    move-object v2, v0

    .line 442
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a:Lcom/facebook/orca/server/FetchMoreMessagesResult;

    if-eq v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    :cond_0
    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 454
    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->c()J

    :goto_1
    return-object v0

    .line 430
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/database/DbServiceHandler;->c:Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/orca/database/DbFetchThreadHandler;->a(Lcom/facebook/orca/users/UserKey;JJI)Lcom/facebook/orca/server/FetchMoreMessagesResult;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userkey specified for more messages fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0

    .line 448
    :cond_3
    :try_start_2
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 450
    iget-object v3, p0, Lcom/facebook/orca/database/DbServiceHandler;->d:Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/database/DbInsertThreadsHandler;->a(Lcom/facebook/orca/server/FetchMoreMessagesResult;Lcom/facebook/orca/server/FetchMoreMessagesResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    invoke-virtual {v7}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-object v0, v1

    goto :goto_1
.end method

.method protected final v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 803
    const-string v0, "appConfig"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 804
    const-string v0, "gateKeepers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->a(Landroid/os/Bundle;)V

    .line 805
    const-string v0, "rollouts"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/OperationResult;->b(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbServiceHandler;->b(Landroid/os/Bundle;)V

    .line 806
    return-object v1
.end method
