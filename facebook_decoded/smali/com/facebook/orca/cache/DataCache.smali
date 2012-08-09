.class public Lcom/facebook/orca/cache/DataCache;
.super Ljava/lang/Object;
.source "DataCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final g:Lcom/facebook/orca/cache/ThreadsCache;

.field private final h:Lcom/facebook/orca/location/LocationCache;

.field private final i:Lcom/facebook/orca/cache/AppConfigCache;

.field private final j:Lcom/facebook/orca/cache/ChatVisibilityCache;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/cache/DataCache;->a:J

    .line 46
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/cache/DataCache;->b:J

    .line 48
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    sput-wide v0, Lcom/facebook/orca/cache/DataCache;->c:J

    .line 49
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/cache/DataCache;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/cache/ChatVisibilityCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/facebook/orca/cache/DataCache;->e:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 69
    iput-object p2, p0, Lcom/facebook/orca/cache/DataCache;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 70
    iput-object p3, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    .line 71
    iput-object p4, p0, Lcom/facebook/orca/cache/DataCache;->h:Lcom/facebook/orca/location/LocationCache;

    .line 72
    iput-object p5, p0, Lcom/facebook/orca/cache/DataCache;->i:Lcom/facebook/orca/cache/AppConfigCache;

    .line 73
    iput-object p6, p0, Lcom/facebook/orca/cache/DataCache;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    .line 74
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/DataCache;->k:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/DataCache;->l:Ljava/util/Map;

    .line 76
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p2

    .line 413
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 414
    invoke-direct {p0, v1}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 415
    const/16 v0, 0x32

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to PREFER_CACHE_IF_UP_TO_DATE b/c the thread is not up to date"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_5

    .line 425
    :cond_3
    if-eqz p3, :cond_4

    .line 426
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->l:Ljava/util/Map;

    sget-wide v4, Lcom/facebook/orca/cache/DataCache;->c:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_4
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_DATA b/c of recent mqtt disconnect"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    if-nez v0, :cond_6

    sub-long v0, v2, v4

    sget-wide v6, Lcom/facebook/orca/cache/DataCache;->b:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_6

    .line 434
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_DATA b/c mqtt disconnected and 5 minutes since last refresh"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 437
    :cond_6
    sub-long v0, v2, v4

    sget-wide v2, Lcom/facebook/orca/cache/DataCache;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 439
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_THREAD_DATA_THRESHOLD_MS b/c it has been 10 minutes since last thread refresh"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 315
    invoke-virtual {p0, p1}, Lcom/facebook/orca/cache/DataCache;->e(Lcom/facebook/orca/threads/FolderName;)J

    move-result-wide v4

    .line 316
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p2

    .line 322
    :cond_1
    const-wide/16 v0, -0x1

    .line 323
    :try_start_1
    iget-object v6, p0, Lcom/facebook/orca/cache/DataCache;->k:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 327
    :cond_2
    iget-object v6, p0, Lcom/facebook/orca/cache/DataCache;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v6}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->h()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 330
    if-eqz p3, :cond_3

    .line 331
    sget-wide v0, Lcom/facebook/orca/cache/DataCache;->c:J

    add-long/2addr v0, v2

    .line 332
    iget-object v2, p0, Lcom/facebook/orca/cache/DataCache;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_3
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_DATA b/c of recent mqtt disconnect"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->f:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    if-nez v0, :cond_5

    sub-long v0, v2, v4

    sget-wide v6, Lcom/facebook/orca/cache/DataCache;->b:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_5

    .line 339
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_DATA b/c mqtt disconnected and 5 minutes since last refresh"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 342
    :cond_5
    sub-long v0, v2, v4

    sget-wide v2, Lcom/facebook/orca/cache/DataCache;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 344
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to CHECK_SERVER_FOR_NEW_DATA b/c 30 minutes since last refresh"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    .line 346
    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/orca/cache/DataCache;->g(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const-string v0, "orca:DataCache"

    const-string v1, "Upgrading to PREFER_CACHE_IF_UP_TO_DATE b/c cache is stale"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object p2, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    const/16 v1, 0x32

    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->e(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private g(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->e:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/location/Location;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;Landroid/location/Location;J)V

    .line 464
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/ThreadCriteria;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 362
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->c(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->e:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/facebook/orca/server/ThreadCriteria;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 374
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/server/ThreadCriteria;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 379
    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->e:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 268
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/facebook/orca/threads/FolderName;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 283
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/FolderName;Lcom/facebook/orca/server/DataFreshnessParam;Z)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v1

    .line 288
    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final e(Lcom/facebook/orca/threads/FolderName;)J
    .locals 2
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->e(Lcom/facebook/orca/threads/FolderName;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Landroid/location/Location;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->h:Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v0}, Lcom/facebook/orca/location/LocationCache;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/appconfig/AppConfig;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->i:Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/AppConfigCache;->a()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 1
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->g:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->d(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->a()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/facebook/orca/cache/DataCache;->j:Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ChatVisibilityCache;->b()Z

    move-result v0

    return v0
.end method
