.class public Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/BinaryDecoder;
.implements Lcom/facebook/apache/commons/codec/BinaryEncoder;
.implements Lcom/facebook/apache/commons/codec/StringDecoder;
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# static fields
.field private static final b:Ljava/util/BitSet;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    .line 82
    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 83
    sget-object v1, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/16 v0, 0x3e

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 86
    sget-object v1, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 89
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v1, Lcom/facebook/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/codec/binary/StringUtils;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final a(ILjava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 119
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 121
    and-int/lit8 v1, p0, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    return-void
.end method

.method public static final a(Ljava/util/BitSet;[B)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 144
    :cond_0
    if-nez p0, :cond_1

    .line 145
    sget-object p0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    .line 147
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 149
    aget-byte v1, p1, v0

    .line 150
    if-gez v1, :cond_2

    .line 151
    add-int/lit16 v1, v1, 0x100

    .line 153
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_3
    invoke-static {v1, v2}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a(ILjava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 1
    .parameter

    .prologue
    .line 212
    sget-object v0, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->b:Ljava/util/BitSet;

    invoke-static {v0, p0}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 319
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 320
    check-cast p1, [B

    invoke-static {p1}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a([B)[B

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 322
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/net/QuotedPrintableCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_2
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be quoted-printable encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
