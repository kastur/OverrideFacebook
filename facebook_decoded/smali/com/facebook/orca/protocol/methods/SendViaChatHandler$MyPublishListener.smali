.class Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;
.super Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;
.source "SendViaChatHandler.java"


# instance fields
.field private final a:J

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/SendViaChatHandler;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager$PublishListener;-><init>()V

    .line 121
    iput-wide p2, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:J

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    const-string v0, "/send_message_response"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 131
    const-string v1, "msgid"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    .line 132
    iget-wide v3, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 136
    const-string v1, "succeeded"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->b:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->c:Z

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)Z
    .locals 6
    .parameter

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 147
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->c:Z

    if-nez v4, :cond_0

    .line 148
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/methods/SendViaChatHandler$MyPublishListener;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
