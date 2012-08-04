.class public Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;
.super Ljava/lang/Object;
.source "MqttPushServiceManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/presence/PresenceManager;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    const-wide/16 v0, 0xa

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 2
    .parameter
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    .line 47
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "orca:MqttPushServiceManager"

    const-string v1, "onActivityBroadcast"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b()V

    .line 71
    return-void
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 143
    const-string v2, "orca:MqttPushServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling check in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 147
    invoke-virtual {v0, v5, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e:Z

    if-eqz v0, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c()V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f()V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d()V

    goto :goto_0

    .line 87
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->d()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "orca:MqttPushServiceManager"

    const-string v1, "Ensuring service started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "Orca.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "orca:MqttPushServiceManager"

    const-string v1, "Stopping service cleanly"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "Orca.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v2}, Lcom/facebook/orca/presence/PresenceManager;->c()J

    move-result-wide v2

    .line 128
    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    const-string v0, "orca:MqttPushServiceManager"

    const-string v1, "User is idle"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->c:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a:J

    add-long/2addr v0, v2

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(J)V

    .line 139
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->e:Z

    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b()V

    .line 66
    return-void
.end method

.method final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->f:Z

    .line 101
    return-void
.end method
