.class public Lcom/facebook/orca/cache/CacheServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "CacheServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/ThreadsCache;

.field private final b:Lcom/facebook/orca/cache/DataCache;

.field private final c:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final d:Lcom/facebook/orca/cache/AppConfigCache;

.field private final e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final f:Lcom/facebook/orca/notify/OrcaNotificationManager;

.field private final g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

.field private final h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

.field private final i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

.field private final j:Lcom/facebook/orca/cache/ChatVisibilityCache;

.field private final k:Lcom/facebook/orca/cache/SendMessageManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/notify/OrcaNotificationManager;Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Lcom/facebook/orca/cache/DeliveredReadReceiptManager;Lcom/facebook/orca/cache/ChatVisibilityCache;Lcom/facebook/orca/cache/SendMessageManager;)V
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
    .line 59
    const-string v0, "CacheServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    .line 61
    iput-object p2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    .line 62
    iput-object p3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 63
    iput-object p4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/cache/AppConfigCache;

    .line 64
    iput-object p5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 65
    iput-object p6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 66
    iput-object p7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    .line 67
    iput-object p8, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    .line 68
    iput-object p9, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    .line 69
    iput-object p10, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    .line 70
    iput-object p11, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->k:Lcom/facebook/orca/cache/SendMessageManager;

    .line 71
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 570
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 576
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 577
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_thread"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 578
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 78
    const-string v0, "fetchThreadListParams"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 79
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->b()Lcom/facebook/orca/threads/FolderName;

    move-result-object v1

    .line 80
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v3

    .line 84
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 87
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadListParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadListParams;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 91
    const-string v4, "fetchThreadListParams"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    :cond_0
    sget-object v0, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v3}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v5

    .line 112
    :goto_0
    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 117
    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v4, v1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v4

    .line 119
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 121
    const/4 v5, 0x0

    move-wide v8, v6

    invoke-static/range {v0 .. v9}, Lcom/facebook/orca/server/FetchThreadListResult;->a(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;JJ)Lcom/facebook/orca/server/FetchThreadListResult;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 143
    :goto_2
    return-object v0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 128
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    .line 129
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 130
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->h()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 133
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->b()J

    move-result-wide v3

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;JZ)V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    .line 137
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->h:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadListResult;->i()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/notify/NotificationSetting;)V

    :cond_3
    move-object v0, v7

    goto :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 152
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 153
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->c()Lcom/facebook/orca/threads/FolderName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->d()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/ThreadsCollection;J)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 158
    return-object v1
.end method

.method protected final c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v8

    .line 166
    const-string v0, "fetchThreadParams"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 167
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v9

    .line 173
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v3

    if-eq v9, v3, :cond_0

    .line 176
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 180
    const-string v3, "fetchThreadParams"

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    move-object v7, v0

    .line 186
    if-eqz v1, :cond_2

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 188
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    .line 203
    :goto_0
    sget-object v0, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v9}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_0

    move v0, v6

    .line 220
    :goto_1
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->g(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->h(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_1

    .line 224
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v1}, Lcom/facebook/orca/cache/ThreadsCache;->g(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v4

    .line 229
    const-string v6, "fetchThreadParams"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    :cond_1
    if-eqz v0, :cond_7

    .line 234
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 235
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 236
    iget-object v7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 237
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2}, Lcom/facebook/orca/server/ThreadCriteria;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_d

    .line 194
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v3

    move-object v1, v0

    goto :goto_0

    .line 198
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid, userid, or phonenumber specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    move v0, v4

    goto/16 :goto_1

    :cond_4
    move v0, v6

    goto/16 :goto_1

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->e()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_1

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 242
    :goto_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 244
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    const-wide/16 v6, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 246
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 277
    :goto_4
    return-object v0

    .line 239
    :cond_6
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_3

    .line 248
    :cond_7
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 250
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v3, v4, :cond_c

    .line 251
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 252
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 253
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 255
    :cond_8
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 256
    if-eqz v3, :cond_b

    .line 257
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 258
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 260
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 261
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 262
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v6}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 263
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v5

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;J)V

    .line 271
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;J)V

    .line 273
    :cond_b
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->g:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    :cond_c
    move-object v0, v2

    goto/16 :goto_4

    :cond_d
    move-object v3, v5

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected final d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 286
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 288
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 289
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 290
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 292
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->d()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 293
    return-object v1
.end method

.method protected final e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    const-string v2, "outgoingMessage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 303
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 304
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 308
    :cond_0
    return-object v1
.end method

.method protected final f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 316
    const-string v0, "threadId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    .line 319
    const-string v3, "userKeyInCanonicalThread"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->d()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->e()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    return-object v1

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    throw v0
.end method

.method protected final g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 340
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 341
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 343
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_0

    .line 345
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 346
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 349
    :cond_0
    return-object v1
.end method

.method protected final h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 358
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 361
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 362
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 363
    return-object v1
.end method

.method protected final i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 377
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v2

    .line 379
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->d()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;J)V

    .line 385
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 381
    :cond_1
    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->ARCHIVED:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReceiptResult;

    .line 395
    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 396
    if-eqz v2, :cond_0

    .line 397
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->b()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 399
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 401
    :cond_0
    return-object v1
.end method

.method protected final k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ReceiptResult;

    .line 411
    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 412
    if-eqz v2, :cond_0

    .line 413
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ReceiptResult;->b()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 417
    :cond_0
    return-object v1
.end method

.method protected final l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 425
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 426
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 427
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    .line 430
    return-object v1
.end method

.method protected final m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 438
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 439
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 440
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->a()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteMessagesParams;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 442
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 443
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->i()Landroid/os/Bundle;

    move-result-object v4

    .line 446
    if-eqz v4, :cond_0

    const-string v0, "message_offline_threading_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "message_offline_threading_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 449
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->k:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v6, v2, v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_0
    if-eqz v4, :cond_1

    const-string v0, "delete_thread"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "delete_thread"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->d(Ljava/lang/String;)V

    .line 462
    :goto_1
    return-object v1

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)V

    goto :goto_1
.end method

.method protected final n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 472
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 475
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 476
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 477
    return-object v1
.end method

.method protected final o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 486
    const-string v2, "threadId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string v3, "draft"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/MessageDraft;

    .line 488
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_0

    .line 490
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/compose/MessageDraft;)V

    .line 492
    :cond_0
    return-object v1
.end method

.method protected final p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v7

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v5

    .line 502
    if-eqz v5, :cond_0

    .line 504
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v5}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    .line 509
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/threads/FolderCounts;)V

    .line 511
    :cond_0
    return-object v7
.end method

.method protected final q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 521
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    .line 526
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 527
    invoke-virtual {v2}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/NewMessageResult;

    .line 529
    if-eqz v0, :cond_1

    .line 530
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->d()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->e()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 534
    invoke-virtual {v0}, Lcom/facebook/orca/server/NewMessageResult;->d()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 536
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/threads/Message;)V

    .line 538
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Lcom/facebook/orca/users/UserKey;J)V

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 548
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/users/UserKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->i:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 557
    :cond_1
    return-object v2
.end method

.method protected final r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 586
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 587
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/AppConfigCache;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 588
    return-object v1
.end method

.method protected final s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->b()Z

    move-result v0

    .line 598
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 606
    :cond_0
    :goto_0
    return-object v0

    .line 601
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a(Z)V

    goto :goto_0
.end method

.method protected final t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/OperationResult;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a(Z)V

    .line 617
    :cond_0
    return-object v0
.end method
