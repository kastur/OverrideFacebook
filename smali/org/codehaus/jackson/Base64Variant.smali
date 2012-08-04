.class public final Lorg/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# instance fields
.field private final a:[I

.field private final b:[C

.field private final c:[B

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:C

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x40

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    .line 65
    new-array v1, v2, [C

    iput-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    .line 71
    new-array v1, v2, [B

    iput-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    .line 112
    iput-object p1, p0, Lorg/codehaus/jackson/Base64Variant;->d:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    .line 114
    iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    .line 115
    iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->g:I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    if-eq v1, v2, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Base64Alphabet length must be exactly 64 (was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    invoke-virtual {p2, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 128
    :goto_0
    if-ge v0, v1, :cond_1

    .line 129
    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    aget-char v2, v2, v0

    .line 130
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 131
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    aput v0, v3, v2

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    if-eqz p3, :cond_2

    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    const/4 v1, -0x2

    aput v1, v0, p4

    .line 138
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-boolean v3, p1, Lorg/codehaus/jackson/Base64Variant;->e:Z

    iget-char v4, p1, Lorg/codehaus/jackson/Base64Variant;->f:C

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/Base64Variant;-><init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    .line 65
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    .line 71
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    .line 157
    iput-object p2, p0, Lorg/codehaus/jackson/Base64Variant;->d:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->c:[B

    .line 159
    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->b:[C

    .line 161
    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->a:[I

    .line 163
    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    .line 166
    iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    .line 167
    iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->g:I

    .line 168
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 273
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    if-eqz v0, :cond_2

    .line 276
    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    goto :goto_0

    .line 280
    :cond_2
    if-ne p3, v2, :cond_0

    .line 281
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public final a(II[BI)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 315
    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    .line 316
    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v0

    .line 317
    iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    if-eqz v0, :cond_1

    .line 318
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    int-to-byte v1, v0

    .line 319
    add-int/lit8 v3, v2, 0x1

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v0, v0, v4

    :goto_0
    aput-byte v0, p3, v2

    .line 321
    add-int/lit8 v0, v3, 0x1

    aput-byte v1, p3, v3

    .line 327
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 319
    goto :goto_0

    .line 323
    :cond_1
    if-ne p2, v4, :cond_2

    .line 324
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final a(II[CI)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 257
    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    .line 258
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v0

    .line 259
    iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    if-eqz v0, :cond_1

    .line 260
    add-int/lit8 v2, v1, 0x1

    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v0, v0, v3

    :goto_0
    aput-char v0, p3, v1

    .line 262
    add-int/lit8 v0, v2, 0x1

    iget-char v1, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    aput-char v1, p3, v2

    .line 268
    :goto_1
    return v0

    .line 260
    :cond_0
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    goto :goto_0

    .line 264
    :cond_1
    if-ne p2, v4, :cond_2

    .line 265
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(I[BI)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    .line 299
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 300
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v1

    .line 301
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->c:[B

    and-int/lit8 v3, p1, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    .line 302
    return v1
.end method

.method public final a(I[CI)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    .line 233
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    .line 234
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    .line 235
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->b:[C

    and-int/lit8 v3, p1, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    .line 236
    return v1
.end method

.method public final a([BZ)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x22

    .line 357
    array-length v3, p1

    .line 361
    shr-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v3

    shr-int/lit8 v1, v3, 0x3

    add-int/2addr v0, v1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 364
    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    .line 371
    const/4 v0, 0x0

    .line 372
    add-int/lit8 v5, v3, -0x3

    move v2, v1

    .line 374
    :goto_0
    if-gt v0, v5, :cond_2

    .line 376
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    .line 377
    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 378
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    .line 379
    invoke-direct {p0, v4, v0}, Lorg/codehaus/jackson/Base64Variant;->a(Ljava/lang/StringBuilder;I)V

    .line 380
    add-int/lit8 v0, v2, -0x1

    if-gtz v0, :cond_1

    .line 382
    const/16 v0, 0x5c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 383
    const/16 v0, 0x6e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    :cond_1
    move v2, v0

    move v0, v1

    .line 386
    goto :goto_0

    .line 389
    :cond_2
    sub-int v1, v3, v0

    .line 390
    if-lez v1, :cond_4

    .line 391
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    .line 392
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 393
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 395
    :cond_3
    invoke-direct {p0, v4, v0, v1}, Lorg/codehaus/jackson/Base64Variant;->a(Ljava/lang/StringBuilder;II)V

    .line 398
    :cond_4
    if-eqz p2, :cond_5

    .line 399
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->e:Z

    return v0
.end method

.method public final a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()C
    .locals 1

    .prologue
    .line 181
    iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->f:C

    return v0
.end method

.method public final b(C)I
    .locals 1
    .parameter

    .prologue
    .line 197
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 203
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->a:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/codehaus/jackson/Base64Variant;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->d:Ljava/lang/String;

    return-object v0
.end method
