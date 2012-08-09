.class public Lorg/codehaus/jackson/impl/Utf8Generator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "Utf8Generator.java"


# static fields
.field private static c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static g:[I


# instance fields
.field private h:Lorg/codehaus/jackson/io/IOContext;

.field private i:Ljava/io/OutputStream;

.field private j:[I

.field private k:I

.field private l:Lorg/codehaus/jackson/io/CharacterEscapes;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->h()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->d:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->e:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->f:[B

    .line 50
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->g:[I

    return-void

    .line 42
    :array_0
    .array-data 0x1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 43
    :array_1
    .array-data 0x1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 44
    :array_2
    .array-data 0x1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method private final a(I[CII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1637
    const v0, 0xd800

    if-lt p1, v0, :cond_1

    .line 1638
    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    .line 1640
    if-lt p3, p4, :cond_0

    .line 1641
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-static {v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 1643
    :cond_0
    aget-char v0, p2, p3

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(II)V

    .line 1644
    add-int/lit8 p3, p3, 0x1

    .line 1651
    :goto_0
    return p3

    .line 1647
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput v1, v2, v0

    .line 1649
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput v1, v2, v0

    .line 1650
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    and-int/lit8 v1, p1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput v1, v2, v0

    goto :goto_0
.end method

.method private a([BII[BI)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1476
    array-length v1, p4

    .line 1477
    add-int v0, p2, v1

    if-le v0, p3, :cond_2

    .line 1478
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1479
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1480
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1481
    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 1482
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    invoke-virtual {v2, p4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1493
    :cond_0
    :goto_0
    return v0

    .line 1485
    :cond_1
    invoke-static {p4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    add-int/2addr v0, v1

    .line 1489
    :goto_1
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, v0

    if-le v1, p3, :cond_0

    .line 1490
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1491
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_1
.end method

.method private a([BILorg/codehaus/jackson/SerializableString;I)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-interface {p3}, Lorg/codehaus/jackson/SerializableString;->c()[B

    move-result-object v4

    .line 1463
    array-length v0, v4

    .line 1464
    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 1465
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8Generator;->a([BII[BI)I

    move-result v0

    .line 1469
    :goto_0
    return v0

    .line 1468
    :cond_0
    const/4 v1, 0x0

    invoke-static {v4, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1657
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(II)I

    move-result v0

    .line 1658
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_0

    .line 1659
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1661
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput v2, v3, v1

    .line 1663
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput v2, v3, v1

    .line 1664
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput v2, v3, v1

    .line 1665
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput v0, v3, v1

    .line 1666
    return-void
.end method

.method private final b(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1680
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    .line 1682
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x5c

    aput v1, v4, p2

    .line 1683
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x75

    aput v2, v4, v0

    .line 1685
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput v2, v4, v1

    .line 1686
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput v2, v4, v0

    .line 1687
    add-int/lit8 v2, v1, 0x1

    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v0, v0, v3

    aput v0, v4, v1

    .line 1688
    add-int/lit8 v0, v2, 0x1

    sget-object v1, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v1, v1, v3

    aput v1, v4, v2

    .line 1694
    :goto_0
    return v0

    .line 1690
    :cond_0
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput v1, v4, p2

    .line 1691
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput v2, v4, v0

    .line 1692
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput v2, v4, v1

    goto :goto_0
.end method

.method private final b(J)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x0

    .line 886
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 887
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 889
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 890
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {p1, p2, v2, v0}, Lorg/codehaus/jackson/io/NumberOutput;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 891
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 892
    return-void
.end method

.method private final b(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x22

    .line 970
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 971
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 973
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 974
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    .line 975
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 976
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 978
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 979
    return-void
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1585
    add-int/lit8 v1, p4, -0x3

    .line 1587
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    add-int/lit8 v2, v0, -0x6

    .line 1588
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1591
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1592
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    if-le v3, v2, :cond_1

    .line 1593
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1596
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1597
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1598
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1599
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-virtual {p1, v3, v6, v4}, Lorg/codehaus/jackson/Base64Variant;->a(I[BI)I

    move-result v3

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1600
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1602
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v3, 0x5c

    aput v3, v6, v0

    .line 1603
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v3, 0x6e

    aput v3, v6, v0

    .line 1604
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1609
    :cond_2
    sub-int v1, p4, p3

    .line 1610
    if-lez v1, :cond_5

    .line 1611
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    if-le v0, v2, :cond_3

    .line 1612
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1614
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1615
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1616
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1618
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-virtual {p1, v0, v1, v6, v2}, Lorg/codehaus/jackson/Base64Variant;->a(II[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1620
    :cond_5
    return-void
.end method

.method private final b([B)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1156
    array-length v0, p1

    .line 1157
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_0

    .line 1158
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1160
    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    .line 1161
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1167
    :goto_0
    return-void

    .line 1165
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    goto :goto_0
.end method

.method private c(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0xdc00

    .line 1700
    if-lt p2, v2, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_1

    .line 1701
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incomplete surrogate pair: first char 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", second 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1702
    invoke-static {v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 1704
    :cond_1
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p2, v2

    add-int/2addr v0, v1

    .line 1705
    return v0
.end method

.method private final c(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x0

    .line 585
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 586
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 588
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->d([CII)V

    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 591
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 593
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 594
    return-void
.end method

.method private c(Lorg/codehaus/jackson/SerializableString;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 440
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->d()[B

    move-result-object v0

    .line 441
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b([B)V

    .line 463
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v1, v2, :cond_1

    .line 446
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 448
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v4, v1

    .line 451
    array-length v1, v0

    .line 452
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-ge v2, v3, :cond_3

    .line 453
    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 461
    :cond_2
    :goto_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v4, v0

    goto :goto_0

    .line 457
    :cond_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b([B)V

    .line 458
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_2

    .line 459
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    goto :goto_1
.end method

.method private final c([CII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 781
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    move v0, p2

    .line 782
    :goto_0
    if-ge v0, p3, :cond_2

    .line 788
    :cond_0
    aget-char v2, p1, v0

    .line 789
    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    .line 790
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    if-lt v3, v1, :cond_1

    .line 794
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 796
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    int-to-byte v2, v2

    aput v2, v5, v3

    .line 797
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_0

    .line 812
    :cond_2
    return-void

    .line 801
    :cond_3
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v2, v3, :cond_4

    .line 802
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 804
    :cond_4
    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    .line 805
    const/16 v2, 0x800

    if-ge v0, v2, :cond_5

    .line 806
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v3, v0, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput v3, v5, v2

    .line 807
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput v0, v5, v2

    move v0, p2

    goto :goto_0

    .line 809
    :cond_5
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    move v0, p2

    .line 811
    goto :goto_0
.end method

.method private d(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x30

    const/4 v5, 0x0

    .line 1725
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x5c

    aput v1, v5, p2

    .line 1727
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x75

    aput v2, v5, v0

    .line 1728
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 1729
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v2, v0, 0xff

    .line 1730
    add-int/lit8 v3, v1, 0x1

    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    shr-int/lit8 v4, v2, 0x4

    aget-byte v0, v0, v4

    aput v0, v5, v1

    .line 1731
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    and-int/lit8 v2, v2, 0xf

    aget-byte v1, v1, v2

    aput v1, v5, v3

    .line 1732
    and-int/lit16 p1, p1, 0xff

    .line 1738
    :goto_0
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    shr-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    aput v2, v5, v0

    .line 1739
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->c:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput v2, v5, v1

    .line 1740
    return v0

    .line 1734
    :cond_0
    add-int/lit8 v2, v1, 0x1

    aput v3, v5, v1

    .line 1735
    add-int/lit8 v0, v2, 0x1

    aput v3, v5, v2

    goto :goto_0
.end method

.method private final d(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x0

    .line 861
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 862
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 864
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 865
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {p1, v2, v0}, Lorg/codehaus/jackson/io/NumberOutput;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 866
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v3, v2, v0

    .line 867
    return-void
.end method

.method private final d([CII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1225
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1226
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_1

    .line 1227
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1229
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->e([CII)V

    .line 1230
    add-int/2addr p2, v0

    .line 1231
    sub-int/2addr p3, v0

    .line 1232
    if-gtz p3, :cond_0

    .line 1233
    return-void
.end method

.method private final e([CII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1255
    add-int v2, p3, p2

    .line 1257
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1258
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:[I

    .line 1261
    :goto_0
    if-ge p2, v2, :cond_0

    .line 1262
    aget-char v4, p1, p2

    .line 1264
    const/16 v1, 0x7f

    if-gt v4, v1, :cond_0

    aget v1, v3, v4

    if-nez v1, :cond_0

    .line 1265
    const/4 v5, 0x0

    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput v4, v5, v0

    .line 1268
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    .line 1269
    goto :goto_0

    .line 1270
    :cond_0
    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1271
    if-ge p2, v2, :cond_1

    .line 1273
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->l:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v0, :cond_2

    .line 1274
    invoke-direct {p0, p1, p2, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->h([CII)V

    .line 1283
    :cond_1
    :goto_1
    return-void

    .line 1276
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-nez v0, :cond_3

    .line 1277
    invoke-direct {p0, p1, p2, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->f([CII)V

    goto :goto_1

    .line 1279
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->g([CII)V

    goto :goto_1
.end method

.method private final f([CII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1293
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v0, v1, :cond_0

    .line 1294
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1297
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1299
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:[I

    .line 1302
    :goto_0
    if-ge p2, p3, :cond_5

    .line 1303
    add-int/lit8 v2, p2, 0x1

    aget-char v4, p1, p2

    .line 1304
    const/16 v1, 0x7f

    if-gt v4, v1, :cond_3

    .line 1305
    aget v1, v3, v4

    if-nez v1, :cond_1

    .line 1306
    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput v4, v6, v0

    move v0, v1

    move p2, v2

    .line 1307
    goto :goto_0

    .line 1309
    :cond_1
    aget v1, v3, v4

    .line 1310
    if-lez v1, :cond_2

    .line 1311
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x5c

    aput v5, v6, v0

    .line 1312
    add-int/lit8 v0, v4, 0x1

    int-to-byte v1, v1

    aput v1, v6, v4

    move p2, v2

    goto :goto_0

    .line 1315
    :cond_2
    invoke-direct {p0, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(II)I

    move-result v0

    move p2, v2

    .line 1317
    goto :goto_0

    .line 1319
    :cond_3
    const/16 v1, 0x7ff

    if-gt v4, v1, :cond_4

    .line 1320
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v4, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput v5, v6, v0

    .line 1321
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput v4, v6, v1

    move p2, v2

    goto :goto_0

    .line 1323
    :cond_4
    invoke-direct {p0, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(II)I

    move-result v0

    move p2, v2

    .line 1325
    goto :goto_0

    .line 1326
    :cond_5
    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1327
    return-void
.end method

.method private final g([CII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1347
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v0, v1, :cond_0

    .line 1348
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1351
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1353
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:[I

    .line 1355
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    .line 1357
    :goto_0
    if-ge p2, p3, :cond_6

    .line 1358
    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    .line 1359
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_3

    .line 1360
    aget v1, v3, v5

    if-nez v1, :cond_1

    .line 1361
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput v5, v7, v0

    move v0, v1

    move p2, v2

    .line 1362
    goto :goto_0

    .line 1364
    :cond_1
    aget v1, v3, v5

    .line 1365
    if-lez v1, :cond_2

    .line 1366
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput v6, v7, v0

    .line 1367
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput v1, v7, v5

    move p2, v2

    goto :goto_0

    .line 1370
    :cond_2
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(II)I

    move-result v0

    move p2, v2

    .line 1372
    goto :goto_0

    .line 1374
    :cond_3
    if-le v5, v4, :cond_4

    .line 1375
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(II)I

    move-result v0

    move p2, v2

    .line 1376
    goto :goto_0

    .line 1378
    :cond_4
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_5

    .line 1379
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput v6, v7, v0

    .line 1380
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput v5, v7, v1

    move p2, v2

    goto :goto_0

    .line 1382
    :cond_5
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(II)I

    move-result v0

    move p2, v2

    .line 1384
    goto :goto_0

    .line 1385
    :cond_6
    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1386
    return-void
.end method

.method private final h([CII)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1405
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v0, v1, :cond_0

    .line 1406
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1408
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1410
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->j:[I

    .line 1413
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    if-gtz v0, :cond_1

    const v0, 0xffff

    .line 1414
    :goto_0
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->l:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1416
    :goto_1
    if-ge p2, p3, :cond_a

    .line 1417
    add-int/lit8 v3, p2, 0x1

    aget-char v6, p1, p2

    .line 1418
    const/16 v2, 0x7f

    if-gt v6, v2, :cond_6

    .line 1419
    aget v2, v4, v6

    if-nez v2, :cond_2

    .line 1420
    add-int/lit8 v2, v1, 0x1

    int-to-byte v6, v6

    aput v6, v8, v1

    move v1, v2

    move p2, v3

    .line 1421
    goto :goto_1

    .line 1413
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    goto :goto_0

    .line 1423
    :cond_2
    aget v2, v4, v6

    .line 1424
    if-lez v2, :cond_3

    .line 1425
    add-int/lit8 v6, v1, 0x1

    const/16 v7, 0x5c

    aput v7, v8, v1

    .line 1426
    add-int/lit8 v1, v6, 0x1

    int-to-byte v2, v2

    aput v2, v8, v6

    move p2, v3

    goto :goto_1

    .line 1427
    :cond_3
    const/4 v7, -0x2

    if-ne v2, v7, :cond_5

    .line 1428
    invoke-virtual {v5}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v2

    .line 1429
    if-nez v2, :cond_4

    .line 1430
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", although was supposed to have one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_4
    sub-int v6, p3, v3

    invoke-direct {p0, v8, v1, v2, v6}, Lorg/codehaus/jackson/impl/Utf8Generator;->a([BILorg/codehaus/jackson/SerializableString;I)I

    move-result v1

    move p2, v3

    .line 1434
    goto :goto_1

    .line 1436
    :cond_5
    invoke-direct {p0, v6, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(II)I

    move-result v1

    move p2, v3

    .line 1438
    goto :goto_1

    .line 1440
    :cond_6
    if-le v6, v0, :cond_7

    .line 1441
    invoke-direct {p0, v6, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(II)I

    move-result v1

    move p2, v3

    .line 1442
    goto :goto_1

    .line 1444
    :cond_7
    invoke-virtual {v5}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v2

    .line 1445
    if-eqz v2, :cond_8

    .line 1446
    sub-int v6, p3, v3

    invoke-direct {p0, v8, v1, v2, v6}, Lorg/codehaus/jackson/impl/Utf8Generator;->a([BILorg/codehaus/jackson/SerializableString;I)I

    move-result v1

    move p2, v3

    .line 1447
    goto :goto_1

    .line 1449
    :cond_8
    const/16 v2, 0x7ff

    if-gt v6, v2, :cond_9

    .line 1450
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput v7, v8, v1

    .line 1451
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput v6, v8, v2

    move p2, v3

    goto/16 :goto_1

    .line 1453
    :cond_9
    invoke-direct {p0, v6, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(II)I

    move-result v1

    move p2, v3

    .line 1455
    goto/16 :goto_1

    .line 1456
    :cond_a
    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1457
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 1136
    return-void
.end method

.method private final j()V
    .locals 5

    .prologue
    .line 1710
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 1711
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1713
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->d:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1714
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1715
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 405
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->l(Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 409
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 410
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 412
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v3, v0

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->p:I

    if-gt v0, v1, :cond_5

    .line 416
    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 418
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:I

    if-gt v0, v1, :cond_4

    .line 419
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_2

    .line 420
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 422
    :cond_2
    invoke-direct {p0, v3, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->e([CII)V

    .line 431
    :goto_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_3

    .line 432
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 434
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v3, v0

    goto :goto_0

    .line 424
    :cond_4
    invoke-direct {p0, v3, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->d([CII)V

    goto :goto_1

    .line 427
    :cond_5
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->l(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1745
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1746
    if-lez v0, :cond_0

    .line 1747
    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 1748
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1750
    :cond_0
    return-void
.end method

.method private final k(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x22

    .line 571
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 572
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 574
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 575
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->l(Ljava/lang/String;)V

    .line 576
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 577
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 579
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 580
    return-void
.end method

.method private final l(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 1201
    :goto_0
    if-lez v2, :cond_1

    .line 1204
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1205
    add-int v4, v0, v3

    invoke-virtual {p1, v0, v4, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1206
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v4, v3

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v4, v5, :cond_0

    .line 1207
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1209
    :cond_0
    invoke-direct {p0, v6, v1, v3}, Lorg/codehaus/jackson/impl/Utf8Generator;->e([CII)V

    .line 1210
    add-int/2addr v0, v3

    .line 1211
    sub-int/2addr v2, v3

    .line 1212
    goto :goto_0

    .line 1213
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .parameter

    .prologue
    .line 211
    const/16 v0, 0x7f

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->k:I

    .line 212
    return-object p0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 338
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->g()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 340
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 344
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 346
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x5b

    aput v2, v0, v1

    .line 348
    return-void
.end method

.method public final a(C)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 760
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 761
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 763
    :cond_0
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 765
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    int-to-byte v1, p1

    aput v1, v2, v0

    .line 772
    :goto_0
    return-void

    .line 766
    :cond_1
    const/16 v0, 0x800

    if-ge p1, v0, :cond_2

    .line 767
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    aput v1, v2, v0

    .line 768
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    and-int/lit8 v1, p1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput v1, v2, v0

    goto :goto_0

    .line 770
    :cond_2
    invoke-direct {p0, p1, v2, v3, v3}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    goto :goto_0
.end method

.method public final a(D)V
    .locals 1
    .parameter

    .prologue
    .line 913
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/String;)V

    .line 923
    :goto_0
    return-void

    .line 921
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 929
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 933
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/String;)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 938
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 873
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(J)V

    .line 883
    :goto_0
    return-void

    .line 878
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 880
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 882
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v0

    .line 269
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 270
    const-string v1, "Can not write a field name, expecting a value"

    invoke-static {v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 272
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 277
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 278
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 280
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 282
    :cond_2
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->j(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter

    .prologue
    .line 946
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 947
    if-nez p1, :cond_0

    .line 948
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->j()V

    .line 954
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-eqz v0, :cond_1

    .line 950
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 952
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/math/BigInteger;)V
    .locals 1
    .parameter

    .prologue
    .line 898
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 899
    if-nez p1, :cond_0

    .line 900
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->j()V

    .line 906
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-eqz v0, :cond_1

    .line 902
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x22

    .line 824
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 826
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 827
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 829
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 830
    add-int v0, p3, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 832
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 833
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 835
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 836
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/SerializableString;)V
    .locals 3
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v0

    .line 313
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 314
    const-string v1, "Can not write a field name, expecting a value"

    invoke-static {v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 316
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 321
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 322
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 324
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 326
    :cond_2
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Lorg/codehaus/jackson/SerializableString;)V

    .line 327
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 3
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v0

    .line 291
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 292
    const-string v1, "Can not write a field name, expecting a value"

    invoke-static {v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 294
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 299
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 300
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 302
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x2c

    aput v2, v0, v1

    .line 304
    :cond_2
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Lorg/codehaus/jackson/SerializableString;)V

    .line 305
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .parameter

    .prologue
    .line 985
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 986
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 987
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 989
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->e:[B

    .line 990
    :goto_0
    array-length v1, v0

    .line 991
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    .line 993
    return-void

    .line 989
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->f:[B

    goto :goto_0
.end method

.method public final a([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x22

    .line 600
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 601
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 602
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 604
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 606
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:I

    if-gt p3, v0, :cond_3

    .line 607
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v0, v1, :cond_1

    .line 608
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 610
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->e([CII)V

    .line 615
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_2

    .line 616
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 618
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 619
    return-void

    .line 612
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->d([CII)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 360
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 362
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x5d

    aput v2, v0, v1

    .line 364
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 365
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 848
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 850
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 851
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 853
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-eqz v0, :cond_1

    .line 854
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->d(I)V

    .line 858
    :goto_0
    return-void

    .line 857
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 542
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_0

    .line 544
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->j()V

    .line 566
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->p:I

    if-le v0, v1, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->o:I

    if-le v0, v1, :cond_2

    .line 557
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(I)V

    goto :goto_0

    .line 560
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_3

    .line 561
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 563
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v3, v1

    .line 564
    invoke-direct {p0, v3, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->e([CII)V

    .line 565
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v5, v3, v0

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/SerializableString;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x22

    .line 625
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 626
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 627
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 629
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 630
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b([B)V

    .line 631
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 632
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 634
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v2, v3, v0

    .line 635
    return-void
.end method

.method public final b([CII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 719
    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 720
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-le v1, v2, :cond_2

    .line 722
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-ge v1, v0, :cond_1

    .line 723
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->c([CII)V

    .line 754
    :cond_0
    return-void

    .line 727
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 730
    :cond_2
    add-int v1, p3, p2

    move v0, p2

    .line 734
    :goto_0
    if-ge v0, v1, :cond_0

    .line 737
    :goto_1
    aget-char v2, p1, v0

    .line 738
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_3

    .line 739
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    int-to-byte v2, v2

    aput v2, v5, v3

    .line 742
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 746
    :cond_3
    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    .line 747
    const/16 v2, 0x800

    if-ge v0, v2, :cond_4

    .line 748
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    shr-int/lit8 v3, v0, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput v3, v5, v2

    .line 749
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput v0, v5, v2

    move v0, p2

    goto :goto_0

    .line 751
    :cond_4
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(I[CII)I

    move v0, p2

    .line 753
    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 370
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 372
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_0

    .line 376
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 378
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x7b

    aput v2, v0, v1

    .line 380
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 684
    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    .line 686
    :goto_0
    if-lez v1, :cond_1

    .line 687
    array-length v0, v5

    .line 689
    if-ge v1, v0, :cond_0

    move v0, v1

    .line 690
    :cond_0
    add-int v4, v2, v0

    invoke-virtual {p1, v2, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    invoke-virtual {p0, v5, v3, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->b([CII)V

    .line 692
    add-int/2addr v2, v0

    .line 693
    sub-int/2addr v1, v0

    .line 694
    goto :goto_0

    .line 695
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1094
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1100
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1121
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->h:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1130
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->i()V

    .line 1131
    return-void

    .line 1124
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 389
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v0, v1, :cond_1

    .line 393
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 395
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    const/16 v2, 0x7d

    aput v2, v0, v1

    .line 397
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 999
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->j()V

    .line 1001
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 960
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->h(Ljava/lang/String;)V

    .line 961
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->a:Z

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->b(Ljava/lang/Object;)V

    .line 966
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 1082
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1083
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1084
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->i:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1088
    :cond_0
    return-void
.end method

.method protected final h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->j()I

    move-result v0

    .line 1014
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->i(Ljava/lang/String;)V

    .line 1017
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1038
    :goto_0
    return-void

    .line 1021
    :pswitch_0
    const/16 v0, 0x2c

    .line 1033
    :goto_1
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->n:I

    if-lt v1, v2, :cond_1

    .line 1034
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->k()V

    .line 1036
    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    aput v0, v1, v2

    .line 1037
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->m:I

    goto :goto_0

    .line 1024
    :pswitch_1
    const/16 v0, 0x3a

    .line 1025
    goto :goto_1

    .line 1027
    :pswitch_2
    const/16 v0, 0x20

    .line 1028
    goto :goto_1

    .line 1017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
