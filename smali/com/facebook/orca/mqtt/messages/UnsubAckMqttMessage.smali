.class public Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;
.super Lcom/facebook/orca/mqtt/messages/MqttMessage;
.source "UnsubAckMqttMessage.java"


# virtual methods
.method public final a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v0

    return-object v0
.end method
