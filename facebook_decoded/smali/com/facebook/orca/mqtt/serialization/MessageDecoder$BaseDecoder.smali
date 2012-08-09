.class Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# instance fields
.field protected a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

.field protected b:I


# direct methods
.method constructor <init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->a:Lcom/facebook/orca/mqtt/messages/FixedHeader;

    .line 89
    iput p2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 90
    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b(Ljava/io/DataInputStream;)I

    move-result v0

    .line 94
    new-array v1, v0, [B

    .line 95
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 96
    iget v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 97
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected final b(Ljava/io/DataInputStream;)I
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 103
    iget v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$BaseDecoder;->b:I

    .line 104
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method
