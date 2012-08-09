.class public Lcom/facebook/orca/sms/SmsFetchThreadsHandler;
.super Ljava/lang/Object;
.source "SmsFetchThreadsHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/sms/SmsContentResolverHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/sms/SmsContentResolverHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/server/FetchMoreThreadsResult;
    .locals 7
    .parameter

    .prologue
    .line 64
    const-string v0, "date <= ?"

    .line 65
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 66
    iget-object v2, p0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->c()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    .line 70
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListResult;
    .locals 17
    .parameter

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 33
    const-string v3, "date > ?"

    .line 34
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadListParams;->d()I

    move-result v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a(ILjava/lang/String;[Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;->a:Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-static {}, Lcom/facebook/orca/sms/SmsContentResolverHandler;->a()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v8

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v13

    .line 42
    invoke-virtual {v4}, Lcom/facebook/orca/threads/ThreadsCollection;->e()I

    move-result v1

    if-lez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/facebook/orca/threads/ThreadsCollection;->a(I)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v13

    .line 49
    :cond_0
    new-instance v1, Lcom/facebook/orca/server/FetchThreadListResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    sget-object v3, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadListParams;->c()J

    move-result-wide v10

    const-wide/16 v15, -0x1

    cmp-long v10, v10, v15

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct/range {v1 .. v14}, Lcom/facebook/orca/server/FetchThreadListResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    return-object v1

    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method
