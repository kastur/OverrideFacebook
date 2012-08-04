.class public Lcom/facebook/apache/http/entity/SerializableEntity;
.super Lcom/facebook/apache/http/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# instance fields
.field private a:[B


# direct methods
.method private a(Ljava/io/Serializable;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    if-nez v0, :cond_0

    .line 90
    const-wide/16 v0, -0x1

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public final f()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/entity/SerializableEntity;->a(Ljava/io/Serializable;)V

    .line 85
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/apache/http/entity/SerializableEntity;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
