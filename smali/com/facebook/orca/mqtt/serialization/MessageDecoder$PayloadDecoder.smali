.class Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;
.super Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;
.source "MessageDecoder.java"


# instance fields
.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1, p3}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;I)V

    .line 199
    iput-object p2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 205
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;

    move-result-object v0

    goto :goto_0

    .line 217
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->h(Ljava/io/DataInputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnectPayload;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->c:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    .line 226
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    iget v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v4, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 239
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 243
    :cond_0
    :goto_2
    new-instance v0, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;-><init>()V

    .line 244
    invoke-virtual {v0, v5}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    .line 245
    invoke-virtual {v0, v3}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    .line 246
    invoke-virtual {v0, v1}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    .line 247
    invoke-virtual {v0, v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    .line 248
    invoke-virtual {v0, v2}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;

    .line 249
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/ConnectPayloadBuilder;->f()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v1, v2

    move-object v3, v2

    goto :goto_0
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/SubscribePayload;
    .locals 4
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    :goto_0
    iget v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 257
    iget v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 258
    new-instance v3, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    invoke-direct {v3, v1, v2}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_0
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/SubAckPayload;
    .locals 3
    .parameter

    .prologue
    .line 264
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    :goto_0
    iget v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, -0x4

    .line 267
    iget v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/messages/SubAckPayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;
    .locals 2
    .parameter

    .prologue
    .line 274
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 275
    :goto_0
    iget v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    if-lez v1, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    new-instance v1, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private h(Ljava/io/DataInputStream;)[B
    .locals 2
    .parameter

    .prologue
    .line 283
    iget v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    new-array v0, v0, [B

    .line 284
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 285
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 286
    return-object v0
.end method
