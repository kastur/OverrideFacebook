.class public Lcom/facebook/orca/mqtt/serialization/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/orca/mqtt/messages/MqttMessage;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_1
    new-instance v0, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    check-cast p2, Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;Lcom/facebook/orca/mqtt/messages/ConnectPayload;)V

    .line 44
    :goto_0
    return-object v0

    .line 19
    :pswitch_2
    new-instance v0, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;)V

    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/SubscribePayload;)V

    goto :goto_0

    .line 26
    :pswitch_4
    new-instance v0, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/SubAckPayload;)V

    goto :goto_0

    .line 30
    :pswitch_5
    new-instance v0, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    check-cast p2, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/mqtt/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;)V

    goto :goto_0

    .line 34
    :pswitch_6
    new-instance v0, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    check-cast p2, [B

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;[B)V

    goto :goto_0

    .line 38
    :pswitch_7
    new-instance v0, Lcom/facebook/orca/mqtt/messages/MqttMessage;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :pswitch_8
    new-instance v0, Lcom/facebook/orca/mqtt/messages/MqttMessage;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :pswitch_9
    new-instance v0, Lcom/facebook/orca/mqtt/messages/PubAckMessage;

    check-cast p1, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/mqtt/messages/PubAckMessage;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;)V

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
