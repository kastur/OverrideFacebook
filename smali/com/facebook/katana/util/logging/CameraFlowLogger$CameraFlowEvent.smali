.class Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;
.super Lcom/facebook/katana/util/logging/MobileEvent;
.source "CameraFlowLogger.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/CameraFlowLogger;Ljava/lang/String;Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;JJJLorg/codehaus/jackson/node/ObjectNode;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const-string v0, "media_upload_flow"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/util/logging/MobileEvent;-><init>(Ljava/lang/String;J)V

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "a"

    invoke-virtual {p3}, Lcom/facebook/katana/util/logging/CameraFlowLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "ct"

    invoke-virtual {v0, v1, p5, p6}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 123
    :cond_0
    if-eqz p2, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    if-eqz p4, :cond_2

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "ft"

    invoke-virtual {p4}, Lcom/facebook/katana/util/logging/CameraFlowLogger$FlowType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "fst"

    invoke-static {p7, p8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "d"

    invoke-static {p9, p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_4
    if-eqz p11, :cond_5

    invoke-virtual {p11}, Lorg/codehaus/jackson/node/ObjectNode;->x()I

    move-result v0

    if-lez v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "p"

    invoke-virtual {p11}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p12, v0

    if-lez v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/util/logging/CameraFlowLogger$CameraFlowEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "fbid"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_6
    return-void
.end method
