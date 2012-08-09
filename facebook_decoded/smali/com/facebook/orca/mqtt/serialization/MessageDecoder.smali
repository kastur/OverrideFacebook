.class public Lcom/facebook/orca/mqtt/serialization/MessageDecoder;
.super Ljava/lang/Object;
.source "MessageDecoder.java"


# instance fields
.field private final a:Lcom/facebook/orca/mqtt/serialization/MessageFactory;

.field private b:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/mqtt/serialization/MessageFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a:Lcom/facebook/orca/mqtt/serialization/MessageFactory;

    .line 25
    return-void
.end method

.method private b()Lcom/facebook/orca/mqtt/messages/FixedHeader;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 56
    shr-int/lit8 v4, v0, 0x4

    .line 57
    and-int/lit8 v3, v0, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_1

    move v3, v1

    .line 58
    :goto_0
    and-int/lit8 v5, v0, 0x6

    shr-int/lit8 v5, v5, 0x1

    .line 59
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 65
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 66
    and-int/lit8 v7, v6, 0x7f

    mul-int/2addr v7, v1

    add-int/2addr v2, v7

    .line 67
    shl-int/lit8 v1, v1, 0x7

    .line 68
    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    .line 70
    new-instance v1, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;-><init>()V

    .line 71
    invoke-virtual {v1, v4}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    .line 72
    invoke-virtual {v1, v3}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->a(Z)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    .line 73
    invoke-virtual {v1, v5}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    .line 74
    invoke-virtual {v1, v0}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->b(Z)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    .line 75
    invoke-virtual {v1, v2}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->c(I)Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;

    .line 76
    invoke-virtual {v1}, Lcom/facebook/orca/mqtt/messages/FixedHeaderBuilder;->f()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v2

    .line 57
    goto :goto_0

    :cond_2
    move v0, v2

    .line 59
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/facebook/orca/mqtt/messages/MqttMessage;
    .locals 4

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Stream not initialized"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b()Lcom/facebook/orca/mqtt/messages/FixedHeader;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/facebook/orca/mqtt/messages/FixedHeader;->e()I

    move-result v1

    .line 37
    new-instance v2, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;I)V

    .line 39
    iget-object v1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-static {v2, v1}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->a(Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v2, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$VariableHeaderDecoder;->b:I

    .line 42
    new-instance v3, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;-><init>(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;I)V

    .line 44
    iget-object v2, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    invoke-static {v3, v2}, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->a(Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    iget v3, v3, Lcom/facebook/orca/mqtt/serialization/MessageDecoder$PayloadDecoder;->b:I

    .line 46
    if-eqz v3, :cond_1

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected bytes remaining in payload"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->a:Lcom/facebook/orca/mqtt/serialization/MessageFactory;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/mqtt/serialization/MessageFactory;->a(Lcom/facebook/orca/mqtt/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/orca/mqtt/messages/MqttMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;->b:Ljava/io/DataInputStream;

    .line 29
    return-void
.end method
