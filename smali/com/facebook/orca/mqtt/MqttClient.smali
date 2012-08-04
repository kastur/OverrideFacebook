.class public Lcom/facebook/orca/mqtt/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/mqtt/MqttSsl;

.field private final b:Lcom/facebook/orca/mqtt/MqttParameters;

.field private c:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private d:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private f:Ljava/lang/Thread;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile h:Lcom/facebook/orca/mqtt/MqttClient$State;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this for writes"
    .end annotation
.end field

.field private volatile i:Lcom/facebook/orca/mqtt/MqttClientCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/MqttSsl;Lcom/facebook/orca/mqtt/MqttParameters;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->INIT:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient;->a:Lcom/facebook/orca/mqtt/MqttSsl;

    .line 65
    iput-object p2, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/facebook/orca/mqtt/MqttClient;->a(Ljava/lang/String;[BII)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->b(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Lcom/facebook/orca/mqtt/MqttParameters;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 313
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 314
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttParameters;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "agent"

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttParameters;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "no_automatic_foreground"

    invoke-virtual {v0, v1, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 318
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v1

    .line 321
    new-instance v2, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttParameters;->e()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/orca/mqtt/MqttParameters;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->i()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v2

    .line 328
    new-instance v3, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttParameters;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/MqttParameters;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->f()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v0

    .line 334
    new-instance v3, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;

    invoke-direct {v3, v1, v2, v0}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;Lcom/facebook/orca/mqtt/messages/ConnectPayload;)V

    .line 335
    invoke-virtual {p0, v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 336
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/mqtt/serialization/MessageEncoder;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 343
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()I

    move-result v1

    .line 344
    new-instance v2, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    invoke-direct {v2, v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;-><init>(I)V

    .line 345
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    invoke-direct {v1, p2}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    .line 346
    new-instance v3, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/SubscribePayload;)V

    .line 348
    invoke-virtual {p1, v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 349
    return-void
.end method

.method private a(Ljava/lang/String;[BII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->h()V

    .line 294
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/orca/mqtt/MqttClient;->b(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string v1, "orca:MqttClient"

    const-string v2, "Caught exception trying to publish"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->g()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/mqtt/MqttClient;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;[BII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->newBuilder()Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    invoke-direct {v1, p1, p4}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 358
    new-instance v2, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    invoke-direct {v2, v0, v1, p2}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;[B)V

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    .line 360
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->h()V

    .line 280
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "orca:MqttClient"

    const-string v2, "Caught exception trying to subscribe"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->g()V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->f()V

    .line 146
    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_1

    .line 148
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_1
    const-string v0, "orca:MqttClient"

    const-string v1, "MQTT network thread exiting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 150
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 151
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a()Lcom/facebook/orca/mqtt/messages/MqttMessage;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 155
    const-string v0, "orca:MqttClient"

    const-string v1, "SUBACK"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient$State;->DISCONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v1, v2, :cond_2

    .line 183
    const-string v1, "Caught throwable"

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->g()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 151
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0

    .line 156
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 157
    const-string v0, "orca:MqttClient"

    const-string v1, "PINGREQ"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 159
    const-string v0, "orca:MqttClient"

    const-string v1, "PINGRESP"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 161
    const-string v1, "orca:MqttClient"

    const-string v2, "PUBLISH"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    check-cast v0, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    .line 163
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 164
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->c()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d()Z

    invoke-interface {v1, v2, v3}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 171
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 172
    const-string v1, "orca:MqttClient"

    const-string v2, "PUBACK"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    check-cast v0, Lcom/facebook/orca/mqtt/messages/PubAckMessage;

    .line 174
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/PubAckMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/MqttParameters;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->a:Lcom/facebook/orca/mqtt/MqttSsl;

    invoke-static {}, Lcom/facebook/orca/mqtt/MqttSsl;->a()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttParameters;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttParameters;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    move-object v1, v0

    .line 203
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 205
    new-instance v2, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    new-instance v0, Lcom/facebook/orca/mqtt/serialization/MessageFactory;

    invoke-direct {v0}, Lcom/facebook/orca/mqtt/serialization/MessageFactory;-><init>()V

    invoke-direct {v2, v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;-><init>(Lcom/facebook/orca/mqtt/serialization/MessageFactory;)V

    .line 206
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a(Ljava/io/DataInputStream;)V

    .line 207
    new-instance v3, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    invoke-direct {v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;-><init>()V

    .line 208
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/io/DataOutputStream;)V

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-static {v3, v0}, Lcom/facebook/orca/mqtt/MqttClient;->a(Lcom/facebook/orca/mqtt/serialization/MessageEncoder;Lcom/facebook/orca/mqtt/MqttParameters;)V

    .line 212
    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a()Lcom/facebook/orca/mqtt/messages/MqttMessage;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 214
    new-instance v0, Lcom/facebook/orca/mqtt/MqttException;

    const-string v1, "Received unexpected message type"

    invoke-direct {v0, v1}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/facebook/orca/mqtt/MqttException;

    const-string v2, "Failed to connect"

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/MqttParameters;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->b:Lcom/facebook/orca/mqtt/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/MqttParameters;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v1, v0

    goto :goto_0

    .line 216
    :cond_1
    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;

    .line 217
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a()B

    move-result v0

    .line 218
    if-eqz v0, :cond_2

    .line 219
    new-instance v1, Lcom/facebook/orca/mqtt/MqttException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection refused: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_2
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :try_start_2
    iput-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Ljava/net/Socket;

    .line 223
    iput-object v3, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    .line 224
    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 225
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_3

    .line 230
    :try_start_4
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;

    invoke-interface {v0}, Lcom/facebook/orca/mqtt/MqttClientCallback;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    :cond_3
    :goto_1
    return-void

    .line 227
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private g()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "orca:MqttClient"

    const-string v1, "Disconnecting"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_1

    .line 247
    monitor-exit p0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Ljava/net/Socket;

    .line 250
    iget-object v1, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 251
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->c:Ljava/net/Socket;

    .line 252
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/lang/Thread;

    .line 253
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->d:Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->e:Lcom/facebook/orca/mqtt/serialization/MessageEncoder;

    .line 255
    sget-object v2, Lcom/facebook/orca/mqtt/MqttClient$State;->DISCONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v2, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v0, :cond_2

    .line 261
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 269
    :try_start_2
    invoke-interface {v1}, Lcom/facebook/orca/mqtt/MqttClientCallback;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-ne v0, v1, :cond_0

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private i()I
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 364
    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;[BIZ)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/facebook/orca/mqtt/MqttException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/MqttClient;->i()I

    move-result v6

    .line 118
    new-instance v7, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v0, Lcom/facebook/orca/mqtt/MqttClient$3;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/mqtt/MqttClient$3;-><init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/lang/String;[BIZI)V

    invoke-direct {v7, v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 124
    invoke-virtual {v7}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit p0

    return v6
.end method

.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->INIT:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to connect on used client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mqtt/MqttClient$1;-><init>(Lcom/facebook/orca/mqtt/MqttClient;)V

    const-string v2, "MqttClient Network Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/lang/Thread;

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/facebook/orca/mqtt/MqttClientCallback;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/orca/mqtt/MqttClient;->i:Lcom/facebook/orca/mqtt/MqttClientCallback;

    .line 84
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/mqtt/messages/SubscribeTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/facebook/orca/mqtt/MqttException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Lcom/facebook/orca/mqtt/MqttException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/mqtt/MqttClient$2;-><init>(Lcom/facebook/orca/mqtt/MqttClient;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTING:Lcom/facebook/orca/mqtt/MqttClient$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/MqttClient;->h:Lcom/facebook/orca/mqtt/MqttClient$State;

    sget-object v1, Lcom/facebook/orca/mqtt/MqttClient$State;->CONNECTED:Lcom/facebook/orca/mqtt/MqttClient$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/MqttClient;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/mqtt/MqttClient$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/mqtt/MqttClient$4;-><init>(Lcom/facebook/orca/mqtt/MqttClient;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
