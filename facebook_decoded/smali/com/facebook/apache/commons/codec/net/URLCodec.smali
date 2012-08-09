.class public Lcom/facebook/apache/commons/codec/net/URLCodec;
.super Ljava/lang/Object;
.source "URLCodec.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/BinaryDecoder;
.implements Lcom/facebook/apache/commons/codec/BinaryEncoder;
.implements Lcom/facebook/apache/commons/codec/StringDecoder;
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# static fields
.field private static b:B

.field private static c:Ljava/util/BitSet;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const/16 v0, 0x25

    sput-byte v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->b:B

    .line 73
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    .line 78
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 79
    sget-object v1, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 82
    sget-object v1, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 86
    sget-object v1, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 89
    :cond_2
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/facebook/apache/commons/codec/net/URLCodec;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/facebook/apache/commons/codec/net/URLCodec;->a:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/net/URLCodec;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
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
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/codec/binary/StringUtils;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/BitSet;[B)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x10

    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 128
    :cond_0
    if-nez p0, :cond_1

    .line 129
    sget-object p0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    .line 132
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 134
    aget-byte v1, p1, v0

    .line 135
    if-gez v1, :cond_2

    .line 136
    add-int/lit16 v1, v1, 0x100

    .line 138
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    const/16 v3, 0x20

    if-ne v1, v3, :cond_3

    .line 140
    const/16 v1, 0x2b

    .line 142
    :cond_3
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_4
    sget-byte v3, Lcom/facebook/apache/commons/codec/net/URLCodec;->b:B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 146
    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 147
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 151
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 1
    .parameter

    .prologue
    .line 195
    sget-object v0, Lcom/facebook/apache/commons/codec/net/URLCodec;->c:Ljava/util/BitSet;

    invoke-static {v0, p0}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 307
    check-cast p1, [B

    invoke-static {p1}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a([B)[B

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 309
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/net/URLCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
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

    const-string v2, " cannot be URL encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
