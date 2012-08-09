.class public Lcom/facebook/apache/commons/codec/binary/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# instance fields
.field private final a:Z

.field private final b:Lcom/facebook/apache/commons/codec/binary/Base64;

.field private final c:[B


# virtual methods
.method public markSupported()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->c:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->read([BII)I

    move-result v0

    .line 110
    :goto_0
    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->c:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 113
    :cond_0
    if-lez v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->c:[B

    aget-byte v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->c:[B

    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 116
    :goto_1
    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->c:[B

    aget-byte v0, v0, v1

    goto :goto_1

    .line 116
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public read([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 141
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 143
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_4

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 145
    :cond_4
    if-nez p3, :cond_5

    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v0}, Lcom/facebook/apache/commons/codec/binary/Base64;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    iget-boolean v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->a:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1000

    :goto_1
    new-array v0, v0, [B

    .line 150
    iget-object v2, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 153
    if-lez v2, :cond_6

    array-length v3, p1

    if-ne v3, p3, :cond_6

    .line 154
    iget-object v3, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/apache/commons/codec/binary/Base64;->b([BII)V

    .line 156
    :cond_6
    iget-boolean v3, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->a:Z

    if-eqz v3, :cond_9

    .line 157
    iget-object v3, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/apache/commons/codec/binary/Base64;->c([BII)V

    .line 162
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/commons/codec/binary/Base64;->a([BII)I

    move-result v0

    goto :goto_0

    .line 149
    :cond_8
    const/16 v0, 0x2000

    goto :goto_1

    .line 159
    :cond_9
    iget-object v3, p0, Lcom/facebook/apache/commons/codec/binary/Base64InputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/apache/commons/codec/binary/Base64;->d([BII)V

    goto :goto_2
.end method
