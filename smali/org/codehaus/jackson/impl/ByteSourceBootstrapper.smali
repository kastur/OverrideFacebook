.class public final Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceBootstrapper.java"


# instance fields
.field private a:Lorg/codehaus/jackson/io/IOContext;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private final f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    .line 76
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    .line 86
    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    .line 87
    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->e()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    .line 89
    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    .line 90
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->f:Z

    .line 92
    return-void
.end method

.method private a()Lorg/codehaus/jackson/JsonEncoding;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 120
    const/4 v1, 0x0

    .line 129
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 135
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 162
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    .line 178
    :goto_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->a(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 179
    return-object v0

    .line 144
    :cond_1
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 150
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 153
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 164
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_1
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 169
    :pswitch_2
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 172
    :pswitch_3
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1

    :cond_6
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 485
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    sparse-switch p1, :sswitch_data_0

    .line 414
    :goto_0
    ushr-int/lit8 v2, p1, 0x10

    .line 415
    const v3, 0xfeff

    if-ne v2, v3, :cond_0

    .line 416
    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    .line 417
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    .line 418
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    .line 434
    :goto_1
    return v0

    .line 399
    :sswitch_0
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    .line 400
    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    .line 401
    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    goto :goto_1

    .line 404
    :sswitch_1
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    .line 405
    iput v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    .line 406
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    goto :goto_1

    .line 409
    :sswitch_2
    const-string v2, "2143"

    invoke-static {v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a(Ljava/lang/String;)V

    .line 411
    :sswitch_3
    const-string v2, "3412"

    invoke-static {v2}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    .line 422
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    .line 423
    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    .line 424
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    goto :goto_1

    .line 428
    :cond_1
    ushr-int/lit8 v2, p1, 0x8

    const v3, 0xefbbbf

    if-ne v2, v3, :cond_2

    .line 429
    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    .line 430
    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    .line 431
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 434
    goto :goto_1

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method private b()Ljava/io/Reader;
    .locals 7

    .prologue
    .line 191
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    .line 192
    sget-object v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;->a:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/io/IOContext;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/io/UTF32Reader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    .line 215
    :goto_0
    return-object v0

    .line 203
    :pswitch_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    .line 205
    if-nez v2, :cond_0

    .line 206
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 215
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    if-ge v0, v1, :cond_1

    .line 212
    new-instance v0, Lorg/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/io/MergedStream;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 444
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    .line 457
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    move v0, v1

    .line 458
    :cond_0
    return v0

    .line 445
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 446
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    goto :goto_0

    .line 447
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 448
    const-string v0, "3412"

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 450
    const-string v0, "2143"

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 463
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 464
    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    .line 472
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->h:I

    move v0, v1

    .line 473
    :cond_0
    return v0

    .line 465
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 466
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->g:Z

    goto :goto_0
.end method

.method private d(I)Z
    .locals 6
    .parameter

    .prologue
    .line 500
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 501
    :goto_0
    if-ge v1, p1, :cond_2

    .line 504
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 505
    const/4 v0, -0x1

    .line 509
    :goto_1
    if-gtz v0, :cond_1

    .line 510
    const/4 v0, 0x0

    .line 515
    :goto_2
    return v0

    .line 507
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    array-length v4, v4

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    .line 512
    :cond_1
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    .line 513
    add-int/2addr v0, v1

    move v1, v0

    .line 514
    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .line 227
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v2

    .line 228
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v4

    .line 229
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v0, v1, :cond_0

    .line 233
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {p3, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(Z)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v5

    .line 235
    new-instance v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->c:[B

    iget v7, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->d:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->e:I

    const/4 v9, 0x1

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    .line 238
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->a:Lorg/codehaus/jackson/io/IOContext;

    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->b()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p4, v2, v4}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->a(ZZ)Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    goto :goto_0
.end method
