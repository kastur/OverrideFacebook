.class public Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# instance fields
.field private final a:Z

.field private final b:Lcom/facebook/apache/commons/codec/binary/Base64;

.field private final c:[B


# direct methods
.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v0}, Lcom/facebook/apache/commons/codec/binary/Base64;->b()I

    move-result v0

    .line 159
    if-lez v0, :cond_0

    .line 160
    new-array v1, v0, [B

    .line 161
    iget-object v2, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/apache/commons/codec/binary/Base64;->a([BII)I

    move-result v0

    .line 162
    if-lez v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 189
    iget-boolean v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->a:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->c:[B

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/apache/commons/codec/binary/Base64;->c([BII)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->flush()V

    .line 195
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 196
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->c:[B

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/apache/commons/codec/binary/Base64;->d([BII)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->a(Z)V

    .line 179
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 110
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->write([BII)V

    .line 111
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 136
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 138
    :cond_4
    if-lez p3, :cond_5

    .line 139
    iget-boolean v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->a:Z

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/commons/codec/binary/Base64;->c([BII)V

    .line 144
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->a(Z)V

    .line 146
    :cond_5
    return-void

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Base64OutputStream;->b:Lcom/facebook/apache/commons/codec/binary/Base64;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/commons/codec/binary/Base64;->d([BII)V

    goto :goto_0
.end method
