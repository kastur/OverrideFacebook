.class public Lcom/facebook/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/BinaryDecoder;
.implements Lcom/facebook/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->a:[C

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Z
    .locals 1
    .parameter

    .prologue
    .line 221
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([B)[C
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-static {p0}, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->a:[C

    .line 282
    :goto_0
    return-object v0

    .line 268
    :cond_0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v4, v0, [C

    .line 273
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 274
    :goto_2
    sget-object v5, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->b:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 275
    aget-byte v5, p0, v1

    sget-object v6, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->b:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 276
    sub-int v5, v0, v3

    const/16 v6, 0x30

    aput-char v6, v4, v5

    .line 274
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 278
    :cond_1
    sub-int v5, v0, v3

    const/16 v6, 0x31

    aput-char v6, v4, v5

    goto :goto_3

    .line 273
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 282
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 95
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    check-cast p1, [B

    invoke-static {p1}, Lcom/facebook/apache/commons/codec/binary/BinaryCodec;->b([B)[C

    move-result-object v0

    return-object v0
.end method
