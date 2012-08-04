.class public Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;
.super Lcom/facebook/orca/mqtt/messages/MqttMessage;
.source "ConnAckMqttMessage.java"


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v0

    return-object v0
.end method
