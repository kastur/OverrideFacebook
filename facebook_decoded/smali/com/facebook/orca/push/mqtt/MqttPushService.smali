.class public Lcom/facebook/orca/push/mqtt/MqttPushService;
.super Landroid/app/Service;
.source "MqttPushService.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private e:Lcom/facebook/orca/inject/ContextScope;

.field private f:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

.field private g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private i:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private j:Lcom/facebook/orca/presence/PresenceManager;

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/MqttConfig;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private n:Ljava/util/Random;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Z

.field private q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

.field private r:J

.field private s:J

.field private t:J

.field private u:Lcom/facebook/orca/config/MqttConfig;

.field private v:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 49
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    .line 50
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    .line 51
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v4

    sput-wide v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:J

    .line 53
    const-string v0, "messenger_mqtt_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    return-void
.end method

.method private a(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 345
    const-string v2, "orca:MqttPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling kick in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    const-string v1, "Orca.KICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 350
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 351
    invoke-virtual {v0, v5, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 352
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    const-string v0, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:J

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->t:J

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 222
    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 223
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 225
    const-string v0, "orca:MqttPushService"

    const-string v1, "Network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    .line 230
    return-void

    .line 226
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "orca:MqttPushService"

    const-string v1, "Config changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/mqtt/MqttPushService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->v:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, "mqtt_connection"

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method static synthetic c()Lcom/facebook/orca/prefs/PrefKey;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Lcom/facebook/orca/prefs/PrefKey;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "orca:MqttPushService"

    const-string v1, "Starting service..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "orca:MqttPushService"

    const-string v1, "Attempt to start service that is already started"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    .line 187
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    iget-boolean v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b(Z)V

    .line 164
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttPushService$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttPushService$2;-><init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    if-nez v0, :cond_0

    .line 192
    const-string v0, "orca:MqttPushService"

    const-string v1, "Attempt to stop connection not active."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    .line 196
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    iget-boolean v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->b(Z)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->o:Landroid/content/BroadcastReceiver;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 207
    iput-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->m:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()V

    .line 211
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 233
    const-string v0, "orca:MqttPushService"

    const-string v1, "In kickConnection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    const-string v0, "orca:MqttPushService"

    const-string v1, "Shouldn\'t be connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()V

    .line 270
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:Lcom/facebook/orca/config/MqttConfig;

    if-eq v0, v1, :cond_1

    .line 241
    const-string v0, "orca:MqttPushService"

    const-string v1, "Mqtt config changed -- disconnecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/MqttConfig;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:Lcom/facebook/orca/config/MqttConfig;

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_4

    .line 247
    iget-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->t:J

    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 248
    const-string v0, "orca:MqttPushService"

    const-string v1, "Will reconnect because network changed"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    iget-wide v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 260
    const-string v0, "orca:MqttPushService"

    const-string v1, "Too early to retry connection"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_3
    const-string v0, "orca:MqttPushService"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_2

    .line 254
    const-string v0, "orca:MqttPushService"

    const-string v1, "Already connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTING:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 267
    const-string v0, "connecting"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->c()V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->i()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 286
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 289
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->m()V

    .line 290
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->l()V

    .line 291
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->n()V

    .line 292
    return-void
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-boolean v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    if-nez v1, :cond_0

    .line 296
    const-string v1, "orca:MqttPushService"

    const-string v2, "Service not started"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    const-string v1, "orca:MqttPushService"

    const-string v2, "Not connected to network"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v1

    if-nez v1, :cond_3

    .line 308
    :cond_2
    const-string v1, "orca:MqttPushService"

    const-string v2, "Not logged in"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    const-string v1, "orca:MqttPushService"

    const-string v2, "GK is off"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:Lcom/facebook/orca/config/MqttConfig;

    invoke-static {}, Lcom/facebook/orca/config/MqttConfig;->d()S

    const-wide/16 v2, 0x5

    sget-wide v4, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v4, v2

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    const-class v2, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    const-string v2, "Orca.KEEP_ALIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 327
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 331
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    const-string v1, "Orca.KEEP_ALIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 339
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 341
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v0, "orca:MqttPushService"

    const-string v1, "Cancelling any pending kick"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const-string v1, "Orca.KICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 361
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 363
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0}, Lcom/facebook/orca/presence/PresenceManager;->h()V

    .line 417
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 366
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connection established"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 369
    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->k()V

    .line 375
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->CONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->r:J

    .line 378
    const-string v0, "connected"

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method final b()V
    .locals 6

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    sget-object v1, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string v0, "orca:MqttPushService"

    const-string v1, "Connection lost"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;->DISCONNECTED:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->q:Lcom/facebook/orca/push/mqtt/MqttPushService$ConnectionState;

    .line 391
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->h()V

    .line 393
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 395
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/push/mqtt/MqttPushService;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 398
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->l:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 401
    const-wide/high16 v2, 0x3fe0

    iget-object v4, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    long-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 402
    const-string v2, "orca:MqttPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rescheduling connection in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->l()V

    .line 405
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->n()V

    .line 407
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 410
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(J)V

    .line 411
    iput-wide v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->s:J

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    const-string v0, "orca:MqttPushService"

    const-string v1, "Creating service"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 89
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 91
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/inject/ContextScope;

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 94
    :try_start_0
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->f:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    .line 95
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 96
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 97
    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->i:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 98
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->j:Lcom/facebook/orca/presence/PresenceManager;

    .line 99
    const-class v0, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Ljavax/inject/Provider;

    .line 100
    const-class v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/net/OrcaNetworkManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->l:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    .line 103
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->n:Ljava/util/Random;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/MqttConfig;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->u:Lcom/facebook/orca/config/MqttConfig;

    .line 105
    const-class v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->v:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "orca:MqttPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service destroyed (started="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->p:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b()V

    .line 120
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 125
    const-string v0, "orca:MqttPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service started with intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v1, "Orca.STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->e()V

    .line 135
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->stopSelf()V

    goto :goto_0

    .line 136
    :cond_2
    const-string v1, "Orca.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->d()V

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "Orca.KEEP_ALIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->g()V

    goto :goto_0

    .line 140
    :cond_4
    const-string v1, "Orca.KICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->f()V

    goto :goto_0
.end method
