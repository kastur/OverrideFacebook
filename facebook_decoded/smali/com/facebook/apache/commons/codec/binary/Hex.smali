.class public Lcom/facebook/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/BinaryDecoder;
.implements Lcom/facebook/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final a:[C

.field private static final b:[C


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 46
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/apache/commons/codec/binary/Hex;->a:[C

    .line 51
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/apache/commons/codec/binary/Hex;->b:[C

    return-void

    .line 46
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 51
    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Hex;->c:Ljava/lang/String;

    .line 178
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/apache/commons/codec/binary/Hex;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static a([B)[C
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/apache/commons/codec/binary/Hex;->a([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method private static a([BZ)[C
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/facebook/apache/commons/codec/binary/Hex;->a:[C

    invoke-static {p0, v0}, Lcom/facebook/apache/commons/codec/binary/Hex;->a([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method private static a([B[C)[C
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    array-length v2, p0

    .line 129
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 131
    :goto_0
    if-ge v1, v2, :cond_0

    .line 132
    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    .line 133
    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 272
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/binary/Hex;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 273
    :goto_0
    invoke-static {p1}, Lcom/facebook/apache/commons/codec/binary/Hex;->a([B)[C

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Lcom/facebook/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :catch_1
    move-exception v0

    .line 277
    new-instance v1, Lcom/facebook/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/apache/commons/codec/binary/Hex;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
