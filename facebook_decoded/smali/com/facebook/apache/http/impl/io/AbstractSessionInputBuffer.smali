.class public abstract Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lcom/facebook/apache/http/io/BufferInfo;
.implements Lcom/facebook/apache/http/io/SessionInputBuffer;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    .line 71
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->g:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->h:I

    .line 74
    const/16 v0, 0x200

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->i:I

    return-void
.end method

.method private a(Lcom/facebook/apache/http/util/CharArrayBuffer;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 326
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    .line 328
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    .line 332
    if-le p2, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 334
    add-int/lit8 p2, p2, -0x1

    .line 337
    :cond_0
    sub-int v0, p2, v1

    .line 338
    iget-boolean v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->g:Z

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a([BII)V

    .line 347
    :goto_0
    return v0

    .line 343
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 344
    invoke-virtual {p1, v2}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/apache/http/util/CharArrayBuffer;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v0

    .line 297
    if-lez v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->b(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 299
    add-int/lit8 v0, v0, -0x1

    .line 300
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->c(I)V

    .line 303
    :cond_0
    if-lez v0, :cond_1

    .line 304
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->b(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 305
    add-int/lit8 v0, v0, -0x1

    .line 306
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->c(I)V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v0

    .line 311
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->g:Z

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v4, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Lcom/facebook/apache/http/util/ByteArrayBuffer;II)V

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a()V

    .line 321
    return v0

    .line 316
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->e()[B

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method private g()I
    .locals 3

    .prologue
    .line 215
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    :goto_0
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 220
    :goto_1
    return v0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 164
    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e()I

    move-result v1

    .line 167
    if-ne v1, v0, :cond_0

    .line 171
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;)I
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    move v2, v1

    .line 244
    :cond_1
    if-eqz v0, :cond_6

    .line 246
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->g()I

    move-result v4

    .line 247
    if-eq v4, v3, :cond_4

    .line 249
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0, p1, v4}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->a(Lcom/facebook/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 254
    :cond_2
    add-int/lit8 v0, v4, 0x1

    iget v5, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v0, v5

    .line 255
    iget-object v5, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v7, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    invoke-virtual {v5, v6, v7, v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a([BII)V

    .line 256
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    move v0, v1

    .line 269
    :cond_3
    :goto_1
    iget v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->h:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->d()I

    move-result v4

    iget v5, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->h:I

    if-lt v4, v5, :cond_1

    .line 270
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iget v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v2, v4

    .line 261
    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    iget-object v5, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v6, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    invoke-virtual {v4, v5, v6, v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->a([BII)V

    .line 262
    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iput v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    .line 264
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e()I

    move-result v2

    .line 265
    if-ne v2, v3, :cond_3

    move v0, v1

    .line 266
    goto :goto_1

    .line 273
    :cond_6
    if-ne v2, v3, :cond_7

    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 275
    goto :goto_0

    .line 277
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b(Lcom/facebook/apache/http/util/CharArrayBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public final a([BII)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 175
    if-nez p1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    goto :goto_0

    .line 186
    :cond_2
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->i:I

    if-le p3, v1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 188
    if-lez v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->j:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a(J)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e()I

    move-result v1

    .line 196
    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 200
    :cond_4
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    goto :goto_0
.end method

.method protected final a(Ljava/io/InputStream;ILcom/facebook/apache/http/params/HttpParams;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x2000

    const/4 v0, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-nez p3, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    .line 96
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    .line 97
    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    .line 98
    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    .line 99
    new-instance v1, Lcom/facebook/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->e:Lcom/facebook/apache/http/util/ByteArrayBuffer;

    .line 100
    invoke-static {p3}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->f:Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->g:Z

    .line 103
    const-string v0, "http.connection.max-line-length"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->h:I

    .line 104
    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->i:I

    .line 105
    invoke-static {}, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c()Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->j:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 106
    return-void
.end method

.method public final b()Lcom/facebook/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->j:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected e()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 138
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    if-lez v1, :cond_1

    .line 139
    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    sub-int/2addr v1, v2

    .line 140
    if-lez v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    iget v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :cond_0
    iput v5, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    .line 144
    iput v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    .line 147
    :cond_1
    iget v2, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    .line 148
    iget-object v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .line 149
    iget-object v3, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->b:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 150
    if-ne v1, v0, :cond_2

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_2
    add-int v0, v2, v1

    iput v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    .line 154
    iget-object v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->j:Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/apache/http/impl/io/HttpTransportMetricsImpl;->a(J)V

    move v0, v1

    .line 155
    goto :goto_0
.end method

.method protected final f()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->c:I

    iget v1, p0, Lcom/facebook/apache/http/impl/io/AbstractSessionInputBuffer;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
