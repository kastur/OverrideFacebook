.class public Lcom/facebook/orca/push/c2dm/C2DMReceiver;
.super Landroid/app/IntentService;
.source "C2DMReceiver.java"


# instance fields
.field private a:Lcom/facebook/orca/inject/ContextScope;

.field private b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PushHandler;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/orca/push/PushManager;

.field private e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private f:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

.field private g:Lcom/facebook/orca/push/common/PushDeserialization;

.field private h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private i:Lcom/facebook/orca/presence/PresenceManager;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "C2DMReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v3}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eaten_wrong_user"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    .line 152
    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 155
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 160
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "unregistered"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v7}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "orca:C2DMReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dmControl: registrationId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    if-eqz v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g()V

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e()V

    .line 208
    :goto_0
    return-void

    .line 173
    :cond_1
    if-eqz v1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->g()V

    .line 177
    const-string v0, "orca:C2DMReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c()V

    .line 179
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->h()J

    move-result-wide v2

    .line 182
    const-string v0, "orca:C2DMReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling registration retry, backoff = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 187
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(J)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v2, "io_exception_on_success"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 205
    const-string v1, "orca:C2DMReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registration error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v3}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalid_payload"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    .line 227
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "Received onMessage"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    const-string v1, "regid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 237
    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->k:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 238
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->h()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 241
    if-nez v0, :cond_1

    .line 242
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "No me user set. Ignoring"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v2, "target_uid"

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "Push notification intended for different user"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "orca:C2DMReceiver"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :cond_2
    :try_start_1
    const-string v0, "message"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 254
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v3, "msg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "orca_message"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    :cond_3
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->g:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-static {v2, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_4

    .line 260
    const-string v0, "orca:C2DMReceiver"

    const-string v4, "Received C2DM push"

    invoke-static {v0, v4}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v4

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->i:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 264
    sget-object v6, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v2, v4, v3, v6}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_1

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b()V

    .line 272
    :cond_5
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "params"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    const-string v2, "trace_info"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "params"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 274
    const-string v1, "trace_info"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v2, "traceInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 280
    const-string v2, "push_trace_confirmation"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a(Ljava/lang/String;)V

    .line 300
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onRegistered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushManager;->c()V

    .line 302
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b(Ljava/lang/String;)V

    .line 310
    const-string v0, "orca:C2DMReceiver"

    const-string v1, "onUnregistrered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 95
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 97
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 100
    :try_start_0
    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 101
    new-instance v0, Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/c2dm/C2DMReceiver$1;-><init>(Lcom/facebook/orca/push/c2dm/C2DMReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->c:Ljava/util/Set;

    .line 102
    const-class v0, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->d:Lcom/facebook/orca/push/PushManager;

    .line 103
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 104
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    .line 105
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->g:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 106
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->h:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 107
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->i:Lcom/facebook/orca/presence/PresenceManager;

    .line 108
    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->j:Ljavax/inject/Provider;

    .line 110
    const-class v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->k:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    .line 111
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 140
    return-void

    .line 124
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->b(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->f:Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0

    .line 126
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->e:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
