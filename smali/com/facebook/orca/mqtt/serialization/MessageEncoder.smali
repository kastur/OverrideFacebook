.class public Lcom/facebook/orca/mqtt/serialization/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# instance fields
.field private a:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;)I
    .locals 2
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/16 v0, 0x80

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    or-int/lit8 v0, v0, 0x40

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    or-int/lit8 v0, v0, 0x20

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 144
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    or-int/lit8 v0, v0, 0x4

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 148
    or-int/lit8 v0, v0, 0x2

    .line 150
    :cond_4
    return v0
.end method

.method private static a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I
    .locals 2
    .parameter

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    or-int/lit8 v0, v0, 0x8

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 257
    invoke-virtual {p0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    or-int/lit8 v0, v0, 0x1

    .line 260
    :cond_1
    return v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 265
    :cond_0
    rem-int/lit16 v0, p1, 0x80

    .line 266
    div-int/lit16 p1, p1, 0x80

    .line 267
    if-lez p1, :cond_1

    .line 268
    or-int/lit16 v0, v0, 0x80

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 271
    if-gtz p1, :cond_0

    .line 272
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;->a()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 158
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 159
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v5

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v6

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/ConnectPayload;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 69
    array-length v0, v7

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x0

    .line 73
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->b()Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->c()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 77
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 79
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 82
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->d()Ljava/lang/String;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 84
    :goto_2
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    array-length v8, v3

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 88
    :cond_1
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/ConnectPayload;->e()Ljava/lang/String;

    move-result-object v4

    .line 89
    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 90
    :goto_3
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    array-length v8, v4

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 96
    iget-object v8, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-static {v5}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 97
    invoke-direct {p0, v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 100
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x4d

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x51

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 104
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x49

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 105
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x73

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 106
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/16 v5, 0x70

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 109
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-static {v6}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write(I)V

    .line 110
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->h()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 113
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v7

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 114
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v7

    invoke-virtual {v2, v7, v9, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 115
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 117
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 118
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v1

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 121
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v3

    invoke-virtual {v0, v3, v9, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 125
    :cond_4
    invoke-virtual {v6}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v1, v4

    invoke-virtual {v0, v4, v9, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 130
    return-void

    .line 74
    :cond_6
    new-array v0, v9, [B

    goto/16 :goto_0

    .line 76
    :cond_7
    new-array v1, v9, [B

    goto/16 :goto_1

    .line 83
    :cond_8
    new-array v3, v9, [B

    goto/16 :goto_2

    .line 89
    :cond_9
    new-array v4, v9, [B

    goto/16 :goto_3
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v2

    .line 221
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    move-result-object v3

    .line 222
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;->c()[B

    move-result-object v4

    .line 224
    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->a()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 227
    array-length v0, v5

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v6

    .line 229
    array-length v6, v4

    .line 230
    add-int/2addr v0, v6

    .line 232
    iget-object v6, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-static {v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 233
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v6, v5

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 236
    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v2, v4

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 241
    return-void

    :cond_1
    move v0, v1

    .line 227
    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 199
    add-int/lit8 v0, v0, 0x2

    .line 200
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubAckPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubAckPayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 208
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    .line 165
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v3

    .line 166
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v4

    .line 167
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;->c()Lcom/facebook/orca/mqtt/messages/SubscribePayload;

    move-result-object v5

    .line 169
    invoke-virtual {v5}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    .line 170
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 172
    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 174
    goto :goto_0

    .line 177
    :cond_0
    add-int/lit8 v0, v1, 0x2

    .line 178
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-static {v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 182
    invoke-virtual {v4}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 186
    invoke-virtual {v5}, Lcom/facebook/orca/mqtt/messages/SubscribePayload;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;

    .line 187
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->a()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v3}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 189
    iget-object v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 190
    iget-object v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    array-length v5, v3

    invoke-virtual {v4, v3, v2, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 191
    iget-object v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/SubscribeTopic;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 194
    return-void
.end method

.method private a(Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(I)V

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;->a()Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 217
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 285
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 246
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 248
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/mqtt/messages/MqttMessage;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 26
    :pswitch_1
    :try_start_1
    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnAckMqttMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 30
    :pswitch_2
    :try_start_2
    check-cast p1, Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/SubscribeMqttMessage;)V

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p1, Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/SubAckMqttMessage;)V

    goto :goto_0

    .line 38
    :pswitch_4
    check-cast p1, Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/UnsubAckMqttMessage;)V

    goto :goto_0

    .line 42
    :pswitch_5
    check-cast p1, Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/PublishMqttMessage;)V

    goto :goto_0

    .line 46
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->b(Lcom/facebook/orca/mqtt/messages/MqttMessage;)V

    goto :goto_0

    .line 50
    :pswitch_7
    check-cast p1, Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;

    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a(Lcom/facebook/orca/mqtt/messages/ConnectMqttMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/mqtt/serialization/MessageEncoder;->a:Ljava/io/DataOutputStream;

    .line 21
    return-void
.end method
