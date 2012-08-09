.class public final Lcom/facebook/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    .line 58
    return-void
.end method

.method private d(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    .line 62
    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    .line 64
    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public final a(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 373
    if-gez p2, :cond_0

    .line 374
    const/4 p2, 0x0

    .line 376
    :cond_0
    iget v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    if-le p3, v1, :cond_1

    .line 377
    iget p3, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    .line 379
    :cond_1
    if-le p2, p3, :cond_3

    .line 387
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v1, p2

    .line 382
    :goto_1
    if-ge v1, p3, :cond_2

    .line 383
    iget-object v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_4

    move v0, v1

    .line 384
    goto :goto_0

    .line 382
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    .line 238
    return-void
.end method

.method public final a(C)V
    .locals 3
    .parameter

    .prologue
    .line 157
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 158
    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d(I)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    aput-char p1, v1, v2

    .line 162
    iput v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    .line 163
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/util/ByteArrayBuffer;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/util/ByteArrayBuffer;->e()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a([BII)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p1, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a([CII)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string p1, "null"

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 108
    iget v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    add-int/2addr v1, v0

    .line 109
    iget-object v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 110
    invoke-direct {p0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d(I)V

    .line 112
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    iget v4, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 113
    iput v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    .line 114
    return-void
.end method

.method public final a([BII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    if-eqz p3, :cond_0

    .line 190
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    .line 191
    add-int v1, v0, p3

    .line 192
    iget-object v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 193
    invoke-direct {p0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d(I)V

    .line 195
    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    .line 196
    iget-object v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 195
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_5
    iput v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    goto :goto_0
.end method

.method public final a([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    if-eqz p3, :cond_0

    .line 89
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p3

    .line 90
    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 91
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d(I)V

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    iget v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    goto :goto_0
.end method

.method public final b(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 439
    if-gez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    if-le p2, v0, :cond_1

    .line 443
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_1
    if-le p1, p2, :cond_2

    .line 446
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 451
    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lcom/facebook/apache/http/protocol/HTTP;->a(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 305
    if-gtz p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    array-length v0, v0

    iget v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    sub-int/2addr v0, v1

    .line 309
    if-le p1, v0, :cond_0

    .line 310
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/util/CharArrayBuffer;->d(I)V

    goto :goto_0
.end method

.method public final b()[C
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    return v0
.end method

.method public final c(I)I
    .locals 2
    .parameter

    .prologue
    .line 401
    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/apache/http/util/CharArrayBuffer;->a(III)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/apache/http/util/CharArrayBuffer;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
