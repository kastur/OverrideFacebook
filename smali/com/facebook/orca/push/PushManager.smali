.class public Lcom/facebook/orca/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private final d:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final g:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final h:Landroid/app/AlarmManager;

.field private final i:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "orca:PushManager"

    sput-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Ljavax/inject/Provider;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/net/OrcaNetworkManager;Landroid/app/AlarmManager;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 1
    .parameter
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
            "Landroid/content/Context;",
            "Lcom/facebook/orca/push/c2dm/C2DMRegistrar;",
            "Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/auth/OrcaAuthenticationManager;",
            "Lcom/facebook/orca/net/OrcaNetworkManager;",
            "Landroid/app/AlarmManager;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/orca/push/PushManager;->b:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 71
    iput-object p3, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    .line 72
    iput-object p4, p0, Lcom/facebook/orca/push/PushManager;->e:Ljavax/inject/Provider;

    .line 73
    iput-object p5, p0, Lcom/facebook/orca/push/PushManager;->f:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 74
    iput-object p6, p0, Lcom/facebook/orca/push/PushManager;->g:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 75
    iput-object p7, p0, Lcom/facebook/orca/push/PushManager;->h:Landroid/app/AlarmManager;

    .line 76
    iput-object p8, p0, Lcom/facebook/orca/push/PushManager;->i:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/push/PushManager;->j:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushManager;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushManager;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/PushManager;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {p1, p2}, Lcom/facebook/orca/analytics/reliability/PushRegistrationInitialStatusClientEvent;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->i:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 138
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenResult;

    .line 219
    const-string v1, "success"

    .line 220
    invoke-virtual {v0}, Lcom/facebook/orca/server/RegisterPushTokenResult;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/RegisterPushTokenResult;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->d()V

    .line 225
    const-string v0, "invalid_token"

    .line 228
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/PushManager;->a(Ljava/lang/String;)V

    .line 229
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushManager;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/PushManager;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/push/PushManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private static d()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/push/PushManager$PushType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->MQTT:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/facebook/orca/push/PushManager;->d()Ljava/util/EnumSet;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->f()V

    .line 102
    :goto_0
    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->MQTT:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->h()V

    .line 108
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->j()V

    .line 109
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->g()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->i()V

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->f()Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/push/PushManager;->a(Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->CURRENT:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "Has current regid -- registering with server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->c()V

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->g:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "Has connection -- registering with c2dm"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;->EXPIRED:Lcom/facebook/orca/push/c2dm/C2DMRegistrar$RegistrationStatus;

    if-ne v0, v1, :cond_2

    .line 123
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "Has expired regid but no network -- registering with server"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->c()V

    goto :goto_0

    .line 126
    :cond_2
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "Has no regid and no network -- trying to register with c2dm"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()V

    .line 145
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 149
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 153
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 156
    iget-boolean v0, p0, Lcom/facebook/orca/push/PushManager;->k:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->b:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    add-long/2addr v1, v3

    .line 165
    iget-object v3, p0, Lcom/facebook/orca/push/PushManager;->h:Landroid/app/AlarmManager;

    invoke-virtual {v3, v5, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 166
    iput-boolean v5, p0, Lcom/facebook/orca/push/PushManager;->k:Z

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->e()V

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/analytics/reliability/PushServerRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/push/PushManager;->i:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 184
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "PushManager.init"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->e()V

    .line 84
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->f:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    const-string v0, "auth_no_user"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/PushManager;->a(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/facebook/orca/push/PushManager;->d()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/server/RegisterPushTokenParams;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v2, "registerPushTokenParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 197
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 198
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 199
    new-instance v2, Lcom/facebook/orca/push/PushManager$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/push/PushManager$1;-><init>(Lcom/facebook/orca/push/PushManager;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 210
    const-string v2, "register_push"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 212
    const-string v0, "attempt"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/PushManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
