.class public Lcom/facebook/orca/server/BackgroundRefreshRunner;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:J

.field private static final c:J

.field private static final d:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final e:Lcom/facebook/orca/cache/DataCache;

.field private final f:Lcom/facebook/orca/database/DbCache;

.field private final g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final h:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

.field private final j:Landroid/content/BroadcastReceiver;

.field private final k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final l:Z

.field private final m:Lcom/facebook/orca/common/util/RateLimiter;

.field private final n:Lcom/facebook/orca/common/util/RateLimiter;

.field private final o:Lcom/facebook/orca/common/util/RateLimiter;

.field private p:Landroid/os/HandlerThread;

.field private q:Landroid/os/Handler;

.field private r:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private volatile s:Z

.field private volatile t:Z

.field private u:J

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "orca:BackgroundRefreshRunner"

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:J

    .line 43
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:J

    .line 45
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/database/DbCache;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/common/util/Clock;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Ljava/util/List;

    .line 78
    iput-object p2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    .line 79
    iput-object p4, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    .line 80
    iput-object p3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 81
    iput-object p5, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 82
    iput-object p6, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 83
    iput-boolean p8, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Z

    .line 84
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    .line 85
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:J

    .line 87
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v1, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    invoke-direct {v0, p7, v1, v2, v3}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Lcom/facebook/orca/common/util/RateLimiter;

    .line 88
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v1, 0x14

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    invoke-direct {v0, p7, v1, v2, v3}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Lcom/facebook/orca/common/util/RateLimiter;

    .line 89
    new-instance v0, Lcom/facebook/orca/common/util/RateLimiter;

    const/16 v1, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    invoke-direct {v0, p7, v1, v2, v3}, Lcom/facebook/orca/common/util/RateLimiter;-><init>(Lcom/facebook/orca/common/util/Clock;IJ)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Lcom/facebook/orca/common/util/RateLimiter;

    .line 92
    new-instance v0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;

    invoke-direct {v0, p0, p6}, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-virtual {p6, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    const-string v1, "com.facebook.orca.ACTION_THREAD_UPDATED_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$2;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    iput-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Landroid/content/BroadcastReceiver;

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Z

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundRefreshRunner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:Landroid/os/HandlerThread;

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/common/async/CancellableRunnable;)Lcom/facebook/orca/common/async/CancellableRunnable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->r:Lcom/facebook/orca/common/async/CancellableRunnable;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Z

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:J

    return-wide v0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Z

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Z

    if-nez v0, :cond_0

    .line 164
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->l:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h()Z

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->k:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 194
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v1, "Starting GET_APP_INFO"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v1, "get_app_info"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/database/DbCache;->a(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->m:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v3, "Hit fetch thread list rate limit"

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 224
    :goto_1
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->c(Lcom/facebook/orca/threads/FolderName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessParam;->PREFER_CACHE_IF_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessParam;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_1

    .line 216
    :cond_2
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting fetch threads ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/server/FetchThreadListParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadListParamsBuilder;->e()Lcom/facebook/orca/server/FetchThreadListParams;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string v2, "fetchThreadListParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread_list"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 224
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->f:Lcom/facebook/orca/database/DbCache;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/database/DbCache;->b(Lcom/facebook/orca/threads/FolderName;)Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->n:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v3, "Hit fetch thread rate limit"

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v2, "Starting fetch thread (server)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 255
    iget-object v4, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->e:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4, v0}, Lcom/facebook/orca/cache/DataCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v4

    .line 256
    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->o:Lcom/facebook/orca/common/util/RateLimiter;

    invoke-virtual {v2}, Lcom/facebook/orca/common/util/RateLimiter;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 259
    sget-object v0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->d:Lcom/facebook/orca/debug/WtfToken;

    sget-object v2, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v3, "Hit in memory caching thread rate limit"

    invoke-static {v0, v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 279
    :goto_0
    return v0

    .line 267
    :cond_2
    sget-object v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a:Ljava/lang/String;

    const-string v2, "Starting getThread (db)"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->STALE_DATA_OKAY:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->h:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "fetch_thread"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method private declared-synchronized i()V
    .locals 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->r:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->s:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;-><init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 299
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->q:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->u:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 300
    if-eqz v1, :cond_0

    .line 301
    iput-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->r:Lcom/facebook/orca/common/async/CancellableRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i:Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->v:Ljava/util/List;

    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 136
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Z

    .line 140
    iget-boolean v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner;->t:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->i()V

    .line 143
    :cond_0
    return-void
.end method
