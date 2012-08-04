.class public final Lorg/codehaus/jackson/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/codehaus/jackson/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lorg/codehaus/jackson/util/TextBuffer;

.field private e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field private f:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->g()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    .line 24
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->h()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 72
    return-void
.end method

.method private static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0xdc00

    .line 387
    if-lt p1, v2, :cond_0

    const v0, 0xdfff

    if-le p1, v0, :cond_1

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x30

    .line 360
    invoke-virtual {p2, p3}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e(I)V

    .line 361
    const/16 v0, 0x5c

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 362
    if-gez p1, :cond_1

    .line 363
    const/16 v0, 0x75

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 364
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    .line 365
    shr-int/lit8 v0, p0, 0x8

    .line 366
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 367
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    and-int/lit8 v0, v0, 0xf

    aget-byte v0, v1, v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 368
    and-int/lit16 p0, p0, 0xff

    .line 373
    :goto_0
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    shr-int/lit8 v1, p0, 0x4

    aget-byte v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 374
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->b:[B

    and-int/lit8 v1, p0, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 378
    :goto_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->f()I

    move-result v0

    return v0

    .line 370
    :cond_0
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 371
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_0

    .line 376
    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto :goto_1
.end method

.method private static a(I[C)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 346
    if-gez p0, :cond_0

    .line 347
    add-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    .line 348
    const/16 v1, 0x75

    aput-char v1, p1, v2

    .line 350
    const/4 v1, 0x4

    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    .line 351
    const/4 v1, 0x5

    sget-object v2, Lorg/codehaus/jackson/io/JsonStringEncoder;->a:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p1, v1

    .line 352
    const/4 v0, 0x6

    .line 355
    :goto_0
    return v0

    .line 354
    :cond_0
    int-to-char v0, p0

    aput-char v0, p1, v2

    .line 355
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a()Lorg/codehaus/jackson/io/JsonStringEncoder;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lorg/codehaus/jackson/io/JsonStringEncoder;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 81
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 83
    :goto_0
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    invoke-direct {v0}, Lorg/codehaus/jackson/io/JsonStringEncoder;-><init>()V

    .line 85
    sget-object v1, Lorg/codehaus/jackson/io/JsonStringEncoder;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/io/JsonStringEncoder;

    goto :goto_0
.end method

.method private static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 395
    const v0, 0x10ffff

    if-le p0, v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    const v0, 0xd800

    if-lt p0, v0, :cond_2

    .line 399
    const v0, 0xdbff

    if-gt p0, v0, :cond_1

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character point (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[C
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->d:Lorg/codehaus/jackson/util/TextBuffer;

    .line 103
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->d:Lorg/codehaus/jackson/util/TextBuffer;

    .line 107
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v3

    .line 108
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v6

    .line 109
    array-length v7, v6

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v5

    move v2, v5

    .line 115
    :goto_0
    if-ge v2, v8, :cond_3

    .line 118
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 119
    if-ge v9, v7, :cond_2

    aget v4, v6, v9

    if-nez v4, :cond_4

    .line 120
    :cond_2
    array-length v4, v3

    if-lt v1, v4, :cond_7

    .line 123
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v3

    move v4, v5

    .line 126
    :goto_1
    add-int/lit8 v1, v4, 0x1

    aput-char v9, v3, v4

    .line 127
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v8, :cond_1

    .line 149
    :cond_3
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 150
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->f()[C

    move-result-object v0

    return-object v0

    .line 132
    :cond_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v6, v2

    .line 133
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    invoke-static {v2, v9}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I[C)I

    move-result v2

    .line 134
    add-int v9, v1, v2

    array-length v10, v3

    if-le v9, v10, :cond_6

    .line 135
    array-length v9, v3

    sub-int/2addr v9, v1

    .line 136
    if-lez v9, :cond_5

    .line 137
    iget-object v10, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    invoke-static {v10, v5, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_5
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v3

    .line 140
    sub-int/2addr v2, v9

    .line 141
    iget-object v10, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    invoke-static {v10, v9, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    add-int/2addr v1, v2

    move v2, v4

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    iget-object v9, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->f:[C

    invoke-static {v9, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    add-int/2addr v1, v2

    move v2, v4

    .line 148
    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 11
    .parameter

    .prologue
    const/16 v9, 0x7f

    const/4 v5, 0x0

    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 160
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 167
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c()[B

    move-result-object v1

    move v2, v5

    move v3, v5

    .line 170
    :goto_0
    if-ge v3, v7, :cond_2

    .line 171
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v6

    .line 175
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 176
    if-gt v8, v9, :cond_3

    aget v4, v6, v8

    if-nez v4, :cond_3

    .line 177
    array-length v4, v1

    if-lt v2, v4, :cond_10

    .line 180
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v1

    move v4, v5

    .line 183
    :goto_1
    add-int/lit8 v2, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 184
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v7, :cond_1

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d(I)[B

    move-result-object v0

    return-object v0

    .line 188
    :cond_3
    array-length v4, v1

    if-lt v2, v4, :cond_4

    .line 189
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v1

    move v2, v5

    .line 193
    :cond_4
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 194
    if-gt v8, v9, :cond_5

    .line 195
    aget v1, v6, v8

    .line 197
    invoke-static {v8, v1, v0, v2}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(IILorg/codehaus/jackson/util/ByteArrayBuilder;I)I

    move-result v2

    .line 198
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->e()[B

    move-result-object v1

    move v3, v4

    .line 199
    goto :goto_0

    .line 200
    :cond_5
    const/16 v3, 0x7ff

    if-gt v8, v3, :cond_7

    .line 201
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 202
    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    .line 239
    :goto_2
    array-length v6, v2

    if-lt v3, v6, :cond_6

    .line 240
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    move v3, v5

    .line 243
    :cond_6
    add-int/lit8 v6, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    move-object v1, v2

    move v3, v4

    move v2, v6

    .line 244
    goto :goto_0

    .line 205
    :cond_7
    const v3, 0xd800

    if-lt v8, v3, :cond_8

    const v3, 0xdfff

    if-le v8, v3, :cond_9

    .line 206
    :cond_8
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 207
    array-length v2, v1

    if-lt v3, v2, :cond_f

    .line 208
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v1

    move v2, v5

    .line 211
    :goto_3
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 212
    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_2

    .line 214
    :cond_9
    const v3, 0xdbff

    if-le v8, v3, :cond_a

    .line 215
    invoke-static {v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 218
    :cond_a
    if-lt v4, v7, :cond_b

    .line 219
    invoke-static {v8}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 221
    :cond_b
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v8, v3}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(II)I

    move-result v4

    .line 222
    const v3, 0x10ffff

    if-le v4, v3, :cond_c

    .line 223
    invoke-static {v4}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 225
    :cond_c
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 226
    array-length v2, v1

    if-lt v3, v2, :cond_e

    .line 227
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v1

    move v2, v5

    .line 230
    :goto_4
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 231
    array-length v2, v1

    if-lt v3, v2, :cond_d

    .line 232
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v1

    move v2, v5

    .line 235
    :goto_5
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 236
    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v4, v6

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto/16 :goto_2

    :cond_d
    move v2, v3

    goto :goto_5

    :cond_e
    move v2, v3

    goto :goto_4

    :cond_f
    move v2, v3

    goto :goto_3

    :cond_10
    move v4, v2

    goto/16 :goto_1
.end method

.method public final c(Ljava/lang/String;)[B
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 255
    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    iput-object v0, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 262
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c()[B

    move-result-object v3

    .line 263
    array-length v2, v3

    move v1, v4

    move v6, v4

    .line 266
    :goto_0
    if-ge v6, v9, :cond_f

    .line 267
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v10, v2

    move-object v2, v3

    move v3, v1

    move v1, v10

    .line 270
    :goto_1
    const/16 v5, 0x7f

    if-gt v6, v5, :cond_2

    .line 271
    if-lt v3, v1, :cond_1

    .line 272
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 273
    array-length v1, v2

    move v3, v4

    .line 276
    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    .line 277
    if-ge v7, v9, :cond_c

    .line 278
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v3

    move v3, v5

    goto :goto_1

    .line 284
    :cond_2
    if-lt v3, v1, :cond_e

    .line 285
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 286
    array-length v1, v2

    move v5, v4

    .line 289
    :goto_2
    const/16 v3, 0x800

    if-ge v6, v3, :cond_4

    .line 290
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    move v5, v6

    move v6, v7

    .line 328
    :goto_3
    if-lt v3, v1, :cond_3

    .line 329
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 330
    array-length v1, v2

    move v3, v4

    .line 333
    :cond_3
    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move-object v3, v2

    move v2, v1

    move v1, v7

    .line 334
    goto :goto_0

    .line 293
    :cond_4
    const v3, 0xd800

    if-lt v6, v3, :cond_5

    const v3, 0xdfff

    if-le v6, v3, :cond_7

    .line 294
    :cond_5
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    .line 295
    if-lt v3, v1, :cond_6

    .line 296
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 297
    array-length v1, v2

    move v3, v4

    .line 300
    :cond_6
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    goto :goto_3

    .line 302
    :cond_7
    const v3, 0xdbff

    if-le v6, v3, :cond_8

    .line 303
    invoke-static {v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 306
    :cond_8
    if-lt v7, v9, :cond_9

    .line 307
    invoke-static {v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 309
    :cond_9
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v6, v3}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(II)I

    move-result v6

    .line 310
    const v3, 0x10ffff

    if-le v6, v3, :cond_a

    .line 311
    invoke-static {v6}, Lorg/codehaus/jackson/io/JsonStringEncoder;->a(I)V

    .line 313
    :cond_a
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    .line 314
    if-lt v3, v1, :cond_b

    .line 315
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 316
    array-length v1, v2

    move v3, v4

    .line 319
    :cond_b
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 320
    if-lt v5, v1, :cond_d

    .line 321
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d()[B

    move-result-object v2

    .line 322
    array-length v1, v2

    move v3, v4

    .line 325
    :goto_4
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    move v3, v5

    move v5, v6

    move v6, v8

    goto/16 :goto_3

    :cond_c
    move v0, v5

    .line 335
    :goto_5
    iget-object v1, p0, Lorg/codehaus/jackson/io/JsonStringEncoder;->e:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->d(I)[B

    move-result-object v0

    return-object v0

    :cond_d
    move v3, v5

    goto :goto_4

    :cond_e
    move v5, v3

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto :goto_5
.end method
