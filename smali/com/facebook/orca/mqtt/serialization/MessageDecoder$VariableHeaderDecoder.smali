.class Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;
.super Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;
.source "MessageDecoder.java"


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;I)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->c(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 120
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->d(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->e(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->f(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->g(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    move-result-object v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private d(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v3, "MQIsdp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid input - missing header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 149
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 150
    iget v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v4

    .line 153
    new-instance v5, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    invoke-direct {v5}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;-><init>()V

    .line 154
    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 155
    and-int/lit16 v0, v3, 0x80

    const/16 v6, 0x80

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->a(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 156
    and-int/lit8 v0, v3, 0x40

    const/16 v6, 0x40

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 157
    and-int/lit8 v0, v3, 0x20

    const/16 v6, 0x20

    if-ne v0, v6, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->d(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 158
    and-int/lit8 v0, v3, 0x18

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->b(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 159
    and-int/lit8 v0, v3, 0x4

    const/4 v6, 0x4

    if-ne v0, v6, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 160
    and-int/lit8 v0, v3, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    :goto_4
    invoke-virtual {v5, v1}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->e(Z)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 161
    invoke-virtual {v5, v4}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->c(I)Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;

    .line 162
    invoke-virtual {v5}, Lcom/facebook/orca/mqtt/messages/ConnectVariableHeaderBuilder;->i()Lcom/facebook/orca/mqtt/messages/ConnectVariableHeader;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 155
    goto :goto_0

    :cond_2
    move v0, v2

    .line 156
    goto :goto_1

    :cond_3
    move v0, v2

    .line 157
    goto :goto_2

    :cond_4
    move v0, v2

    .line 159
    goto :goto_3

    :cond_5
    move v1, v2

    .line 160
    goto :goto_4
.end method

.method private e(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;
    .locals 2
    .parameter

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 168
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 169
    iget v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 170
    new-instance v1, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/messages/ConnAckVariableHeader;-><init>(B)V

    return-object v1
.end method

.method private f(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 176
    new-instance v1, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;

    invoke-direct {v1, v0}, Lcom/facebook/orca/mqtt/messages/MessageIdVariableHeader;-><init>(I)V

    return-object v1
.end method

.method private g(Ljava/io/DataInputStream;)Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;
    .locals 3
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const/4 v0, -0x1

    .line 183
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    invoke-virtual {v2}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->c()I

    move-result v2

    if-lez v2, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 186
    :cond_0
    new-instance v2, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/mqtt/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
