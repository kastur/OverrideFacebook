.class public Lcom/facebook/orca/server/OrcaServiceManager;
.super Ljava/lang/Object;
.source "OrcaServiceManager.java"


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/presence/PresenceManager;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/server/OrcaServiceManager;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceManager;->b:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->e:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/OrcaServiceManager$1;-><init>(Lcom/facebook/orca/server/OrcaServiceManager;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->d:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceManager;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    const-string v0, "orca:OrcaServiceManager"

    const-string v3, "maybeStartStopOrcaService"

    invoke-static {v0, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/facebook/orca/server/OrcaServiceManager;->a:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    :cond_0
    move v0, v2

    .line 59
    :goto_0
    if-eqz v0, :cond_4

    .line 60
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->f:Z

    if-nez v0, :cond_1

    .line 61
    const-string v0, "orca:OrcaServiceManager"

    const-string v1, "Starting OrcaService"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceManager;->b:Landroid/content/Context;

    const-class v3, Lcom/facebook/orca/server/OrcaService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    const-string v1, "Orca.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    iput-boolean v2, p0, Lcom/facebook/orca/server/OrcaServiceManager;->f:Z

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->g:Z

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->e:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceManager$2;-><init>(Lcom/facebook/orca/server/OrcaServiceManager;)V

    sget-wide v3, Lcom/facebook/orca/server/OrcaServiceManager;->a:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    iput-boolean v2, p0, Lcom/facebook/orca/server/OrcaServiceManager;->g:Z

    .line 86
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 56
    goto :goto_0

    .line 78
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->f:Z

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "orca:OrcaServiceManager"

    const-string v2, "Stopping OrcaService"

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceManager;->b:Landroid/content/Context;

    const-class v3, Lcom/facebook/orca/server/OrcaService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v2, "Orca.STOP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    iput-boolean v1, p0, Lcom/facebook/orca/server/OrcaServiceManager;->f:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceManager;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceManager;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceManager;->g:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "orca:OrcaServiceManager"

    const-string v1, "onActivityBroadcast"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceManager;->a()V

    .line 91
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceManager;->a()V

    return-void
.end method
