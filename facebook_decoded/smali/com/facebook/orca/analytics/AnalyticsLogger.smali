.class public Lcom/facebook/orca/analytics/AnalyticsLogger;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;

.field private static final b:J

.field private static final c:J


# instance fields
.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/analytics/AnalyticsConfig;

.field private final f:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

.field private final g:Landroid/os/PowerManager;

.field private final h:Landroid/view/WindowManager;

.field private final i:Lcom/facebook/orca/common/util/Clock;

.field private final j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityish;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Lcom/facebook/orca/debug/WtfToken;

    .line 47
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->b:J

    .line 48
    sget-wide v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a:J

    const-wide/16 v2, 0xa

    sget-wide v4, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/analytics/AnalyticsLogger;->c:J

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsConfig;Lcom/facebook/orca/analytics/AnalyticsEventProcessor;Landroid/os/PowerManager;Landroid/view/WindowManager;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsConfig;",
            "Lcom/facebook/orca/analytics/AnalyticsEventProcessor;",
            "Landroid/os/PowerManager;",
            "Landroid/view/WindowManager;",
            "Lcom/facebook/orca/common/util/Clock;",
            "Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    .line 62
    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    .line 66
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    .line 68
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Ljava/util/Set;

    .line 69
    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    .line 70
    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->t:I

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 86
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Ljavax/inject/Provider;

    .line 87
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsConfig;

    .line 88
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->f:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    .line 89
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->g:Landroid/os/PowerManager;

    .line 90
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Landroid/view/WindowManager;

    .line 91
    iput-object p6, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/common/util/Clock;

    .line 92
    iput-object p7, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    .line 93
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->l:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private static a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "app_state"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p3}, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 391
    invoke-virtual {v0, p0, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 392
    invoke-virtual {v0, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 393
    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 3
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "orientation"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "module"

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->FOREGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 116
    const-string v1, "key_ui_event"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 117
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 119
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 402
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "session_end"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "session_timeout"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    const-string v1, "stop_upload"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 407
    iput-boolean v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    .line 408
    return-void
.end method

.method private declared-synchronized a(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "connection_change"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "connection"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    const-string v2, "connection_subtype"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v6

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->g()V

    .line 162
    invoke-direct {p0, v6, v7}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(J)V

    .line 169
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    if-eqz v1, :cond_0

    .line 170
    check-cast p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v1, :cond_6

    .line 175
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    move-object v1, v0

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsActivity;->f_()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 179
    :goto_1
    if-nez v3, :cond_5

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v3, "unknown"

    move-object v4, v1

    move-object v5, v3

    move-object v3, v1

    .line 185
    :goto_2
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;

    if-eqz v1, :cond_4

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;

    move-object v1, v0

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;->i()Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_3
    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v8, "navigation"

    invoke-direct {v2, v8}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v8, "dest_module"

    invoke-virtual {v2, v8, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v2

    invoke-interface {p1}, Lcom/facebook/orca/activity/FbActivityish;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v2

    .line 193
    if-eqz v1, :cond_1

    .line 194
    const-string v5, "dest_module_uri"

    invoke-virtual {v2, v5, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 197
    :cond_1
    if-eqz v4, :cond_2

    .line 198
    const-string v1, "dest_module_class"

    invoke-virtual {v2, v1, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 207
    :cond_3
    invoke-virtual {v2, v6, v7}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 210
    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v1}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v3, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->f()V

    return-void
.end method

.method private a(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    invoke-interface {p1}, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;->l()Ljava/lang/String;

    move-result-object v0

    .line 270
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    .line 271
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    invoke-direct {v0, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsLogger;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->h:Landroid/view/WindowManager;

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 3
    .parameter

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    if-nez v0, :cond_1

    .line 281
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->BACKGROUNDED:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->g:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;->RESIGN:Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;Lcom/facebook/orca/analytics/AnalyticEventNames$AppStateNames;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 291
    const-string v1, "maybe_truncate_batch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 292
    const-string v1, "key_ui_event"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 294
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->j:Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_1
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 7
    .parameter

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    if-eqz v1, :cond_0

    .line 218
    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->q:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v1}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v1

    .line 224
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 225
    sget-object v3, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v4, "orca:AnalyticsLogger"

    const-string v5, "Previous sendToBackgroundDetector is still alive"

    invoke-static {v3, v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 230
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    if-nez v3, :cond_2

    .line 231
    new-instance v3, Lcom/facebook/orca/analytics/AnalyticsLogger$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;J)V

    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 237
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    sget-wide v5, Lcom/facebook/orca/analytics/AnalyticsLogger;->b:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_2
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 241
    sget-object v3, Lcom/facebook/orca/analytics/AnalyticsLogger;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v4, "orca:AnalyticsLogger"

    const-string v5, "Previous sessionEndDetector is still alive"

    invoke-static {v3, v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    .line 246
    :cond_3
    invoke-interface {p1}, Lcom/facebook/orca/activity/FbActivityish;->b()Ljava/lang/String;

    move-result-object v3

    .line 247
    iget-boolean v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    if-eqz v4, :cond_5

    .line 249
    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(JLjava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    .line 252
    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    iput-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_5
    :try_start_1
    new-instance v4, Lcom/facebook/orca/analytics/AnalyticsLogger$2;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger$2;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger;JLjava/lang/String;)V

    iput-object v4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    .line 260
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    sget-wide v3, Lcom/facebook/orca/analytics/AnalyticsLogger;->c:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic b(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    invoke-interface {p1}, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;->l()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->i:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 306
    :cond_0
    const-string v0, "AUTO_SET"

    invoke-virtual {p1}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 310
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->m:Z

    invoke-virtual {p1, v0}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;->a(Z)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 311
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "hide_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 342
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsLogger;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->t:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/activity/FbActivityish;)V

    return-void
.end method

.method private declared-synchronized c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 363
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-ne v0, v1, :cond_1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_1
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->h()V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 0

    .prologue
    .line 144
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iput-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->s:Ljava/lang/Runnable;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->r:Ljava/lang/Runnable;

    .line 156
    :cond_1
    return-void
.end method

.method private declared-synchronized h()V
    .locals 0

    .prologue
    .line 266
    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->l:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 351
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->e:Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsConfig;->a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->p:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    sget-object v1, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->CORE_AND_SAMPLED:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    if-ne v0, v1, :cond_1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_1
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "show_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "module"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "is_modal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 332
    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->f:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->v:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 105
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "login"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "resume_upload"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger;->o:Z

    .line 320
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "logout"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
