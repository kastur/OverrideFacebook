.class public Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
.super Ljava/lang/Object;
.source "SendViaChatHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/push/common/PushDeserialization;

.field private final c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 36
    iput-object p3, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x1388

    const/4 v10, 0x0

    .line 46
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 49
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "body"

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 57
    const-string v0, "msgid"

    invoke-virtual {v1, v0, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "coordinates"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->c:Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Lcom/facebook/orca/threads/Message;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 63
    :cond_0
    new-instance v2, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;-><init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;J)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v5, "/send_message_response"

    invoke-virtual {v0, v5, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    .line 66
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 67
    add-long/2addr v5, v7

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v7, "/send_message2"

    const-wide/16 v8, 0x1388

    invoke-virtual {v0, v7, v1, v8, v9}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;J)Z

    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (publish failed)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v3, "/send_message_response"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v5, v0

    .line 75
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    .line 76
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (timed out after publish)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (timed out waiting for response)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    invoke-static {v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to send via MQTT (server returned failure"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-string v1, "/send_message_response"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->b(Ljava/lang/String;Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;

    move-result-object v9

    .line 106
    new-instance v6, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v7, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct/range {v6 .. v12}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v6
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
