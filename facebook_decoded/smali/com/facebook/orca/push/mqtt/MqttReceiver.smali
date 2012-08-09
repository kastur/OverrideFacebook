.class public Lcom/facebook/orca/push/mqtt/MqttReceiver;
.super Landroid/app/IntentService;
.source "MqttReceiver.java"


# instance fields
.field private a:Lcom/facebook/orca/inject/ContextScope;

.field private b:Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

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

.field private d:Lcom/facebook/orca/push/common/PushDeserialization;

.field private e:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

.field private f:Lcom/facebook/orca/presence/PresenceManager;

.field private g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private h:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "MqttReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x78

    .line 255
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    .line 90
    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->a()V

    .line 93
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 120
    const-string v0, "topic_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    :try_start_0
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 125
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "orca:MqttReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Publish:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    const-string v2, "/orca_message_notifications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "/orca_typing_notifications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 142
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    const-string v2, "/orca_presence"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->b(Lorg/codehaus/jackson/JsonNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "orca:MqttReceiver"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    :cond_4
    :try_start_1
    const-string v2, "/messaging_events"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->c(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 136
    :cond_5
    const-string v2, "/push_notification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-direct {p0, v1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->d(Lorg/codehaus/jackson/JsonNode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/push/PushSource;)V
    .locals 5
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p1}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "invalid_payload"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const-string v0, "thread_id"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    const-string v0, "registration_id"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "messaging_push_notif_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mqtt_other_token"

    const-string v4, "message_id"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 160
    :cond_1
    const-string v5, ""

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonNode;)V
    .locals 6
    .parameter

    .prologue
    .line 169
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 177
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 178
    sget-object v5, Lcom/facebook/orca/push/PushSource;->MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v3, v2, v1, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/facebook/orca/push/PushSource;->MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Lcom/facebook/orca/push/PushSource;)V

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 183
    :cond_2
    const-string v1, "typ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "sender_fbid"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->f:Lcom/facebook/orca/presence/PresenceManager;

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/users/UserKey;I)V

    goto :goto_1
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)V
    .locals 7
    .parameter

    .prologue
    .line 191
    const-string v0, "full"

    const-string v1, "list_type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 193
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 195
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 196
    const-string v4, "u"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 197
    const-string v5, "p"

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    .line 198
    new-instance v5, Lcom/facebook/orca/users/UserKey;

    sget-object v6, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v5, v6, v4}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/presence/PresenceManager;->a(Ljava/util/Map;Z)V

    .line 201
    return-void
.end method

.method private c(Lorg/codehaus/jackson/JsonNode;)V
    .locals 7
    .parameter

    .prologue
    .line 204
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "delivery_receipt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v0, "from_fbid"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "mid"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v2, "tid"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v3, "orca:MqttReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received delivery_receipt from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v4, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->e:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v1, "read_receipt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "reader_fbid"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    .line 215
    const-string v3, "tid"

    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 216
    const-string v4, "orca:MqttReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received read_recept from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v4, Lcom/facebook/orca/users/UserKey;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->e:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;->a(Lcom/facebook/orca/users/UserKey;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private d(Lorg/codehaus/jackson/JsonNode;)V
    .locals 6
    .parameter

    .prologue
    .line 224
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-static {v1, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 228
    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v3, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->h:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v3}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->e()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    const-string v1, "orca:MqttReceiver"

    const-string v3, "Ignoring MQTT push for other token"

    invoke-static {v1, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v2, v0}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "orca:MqttReceiver"

    const-string v3, "Received MQTT push"

    invoke-static {v0, v3}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "async_job"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 239
    const-string v4, "async_job"

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v4, "/send_push_notification_ack"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;I)I

    .line 242
    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->f:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/threads/Message;)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushHandler;

    .line 246
    sget-object v5, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-interface {v0, v1, v3, v2, v5}, Lcom/facebook/orca/push/PushHandler;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_1

    .line 249
    :cond_2
    sget-object v0, Lcom/facebook/orca/push/PushSource;->C2DM_OVER_MQTT:Lcom/facebook/orca/push/PushSource;

    invoke-direct {p0, v0}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 66
    invoke-static {p0}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 68
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 71
    :try_start_0
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->b:Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    .line 72
    new-instance v0, Lcom/facebook/orca/push/mqtt/MqttReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/push/mqtt/MqttReceiver$1;-><init>(Lcom/facebook/orca/push/mqtt/MqttReceiver;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->c:Ljava/util/Set;

    .line 73
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->d:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 74
    const-class v0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->e:Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    .line 75
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->f:Lcom/facebook/orca/presence/PresenceManager;

    .line 76
    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->g:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 77
    const-class v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->h:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 78
    const-class v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->i:Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.orca.push.mqtt.PUBLISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->b:Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    iget-object v0, v0, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v0}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    .line 116
    return-void

    .line 106
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/push/mqtt/MqttReceiver;->b:Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    iget-object v1, v1, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    invoke-virtual {v1}, Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;->b()V

    throw v0
.end method
