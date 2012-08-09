.class public Lcom/facebook/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# instance fields
.field private final a:Lcom/facebook/apache/http/io/SessionInputBuffer;

.field private final b:Lcom/facebook/apache/http/util/CharArrayBuffer;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/io/SessionInputBuffer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    .line 83
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    .line 85
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    .line 98
    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    .line 99
    new-instance v0, Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    .line 101
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    .line 205
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    if-gez v0, :cond_0

    .line 206
    new-instance v0, Lcom/facebook/apache/http/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    .line 210
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    .line 212
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c()V

    .line 214
    :cond_1
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 230
    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    .line 231
    packed-switch v1, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent codec state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 234
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 235
    if-ne v1, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    new-instance v0, Lcom/facebook/apache/http/MalformedChunkCodingException;

    const-string v1, "Unexpected content at the end of chunk"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a()V

    .line 246
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-interface {v1, v2}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 247
    if-eq v1, v3, :cond_0

    .line 250
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c(I)I

    move-result v0

    .line 251
    if-gez v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->c()I

    move-result v0

    .line 255
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->b:Lcom/facebook/apache/http/util/CharArrayBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->b(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/MalformedChunkCodingException;

    const-string v1, "Bad chunk header"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/apache/http/impl/io/AbstractMessageParser;->a(Lcom/facebook/apache/http/io/SessionInputBuffer;IILcom/facebook/apache/http/message/LineParser;)[Lcom/facebook/apache/http/Header;
    :try_end_0
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Lcom/facebook/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid footer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-static {v1, v0}, Lcom/facebook/apache/http/util/ExceptionUtils;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 276
    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    instance-of v0, v0, Lcom/facebook/apache/http/io/BufferInfo;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    check-cast v0, Lcom/facebook/apache/http/io/BufferInfo;

    invoke-interface {v0}, Lcom/facebook/apache/http/io/BufferInfo;->d()I

    move-result v0

    .line 106
    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 287
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    if-nez v0, :cond_2

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    if-nez v0, :cond_1

    .line 291
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 292
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    .line 296
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    .line 297
    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    .line 300
    :cond_2
    return-void

    .line 296
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    .line 297
    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    throw v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 125
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v0

    .line 131
    :cond_2
    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a()V

    .line 133
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    if-nez v1, :cond_1

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a()I

    move-result v1

    .line 138
    if-eq v1, v0, :cond_4

    .line 139
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    .line 140
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    if-lt v0, v2, :cond_4

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 159
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->g:Z

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    if-eqz v1, :cond_2

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 166
    :cond_2
    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a()V

    .line 168
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    if-nez v1, :cond_1

    .line 172
    :cond_3
    iget v1, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->a:Lcom/facebook/apache/http/io/SessionInputBuffer;

    invoke-interface {v2, p1, p2, v1}, Lcom/facebook/apache/http/io/SessionInputBuffer;->a([BII)I

    move-result v1

    .line 174
    if-eq v1, v0, :cond_5

    .line 175
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    .line 176
    iget v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    if-lt v0, v2, :cond_4

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->c:I

    :cond_4
    move v0, v1

    .line 179
    goto :goto_0

    .line 181
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->f:Z

    .line 182
    new-instance v0, Lcom/facebook/apache/http/TruncatedChunkException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Truncated chunk ( expected size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/apache/http/impl/io/ChunkedInputStream;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
