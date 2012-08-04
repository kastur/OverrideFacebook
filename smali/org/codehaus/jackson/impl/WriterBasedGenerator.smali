.class public final Lorg/codehaus/jackson/impl/WriterBasedGenerator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "WriterBasedGenerator.java"


# static fields
.field private static c:[C

.field private static d:[I


# instance fields
.field private e:Lorg/codehaus/jackson/io/IOContext;

.field private f:Ljava/io/Writer;

.field private g:[I

.field private h:I

.field private i:Lorg/codehaus/jackson/io/CharacterEscapes;

.field private j:Lorg/codehaus/jackson/SerializableString;

.field private k:[C

.field private l:I

.field private m:I

.field private n:I

.field private o:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->g()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    .line 26
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/Writer;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 50
    sget-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d:[I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 95
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 101
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->e:Lorg/codehaus/jackson/io/IOContext;

    .line 126
    iput-object p4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    .line 127
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->g()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    .line 130
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(I)Lorg/codehaus/jackson/JsonGenerator;

    .line 133
    :cond_0
    return-void
.end method

.method private final a([CIICI)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 1659
    if-ltz p5, :cond_2

    .line 1660
    if-le p2, v3, :cond_0

    if-ge p2, p3, :cond_0

    .line 1661
    add-int/lit8 p2, p2, -0x2

    .line 1662
    const/16 v0, 0x5c

    aput-char v0, p1, p2

    .line 1663
    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p5

    aput-char v1, p1, v0

    .line 1729
    :goto_0
    return p2

    .line 1665
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->o:[C

    .line 1666
    if-nez v0, :cond_1

    .line 1667
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k()[C

    move-result-object v0

    .line 1669
    :cond_1
    int-to-char v1, p5

    aput-char v1, v0, v3

    .line 1670
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1674
    :cond_2
    const/4 v0, -0x2

    if-eq p5, v0, :cond_7

    .line 1675
    const/4 v0, 0x5

    if-le p2, v0, :cond_4

    if-ge p2, p3, :cond_4

    .line 1676
    add-int/lit8 v0, p2, -0x6

    .line 1677
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x5c

    aput-char v2, p1, v0

    .line 1678
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 1680
    const/16 v1, 0xff

    if-le p4, v1, :cond_3

    .line 1681
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1682
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v0

    .line 1683
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 1684
    and-int/lit16 v1, p4, 0xff

    int-to-char p4, v1

    .line 1689
    :goto_1
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v3, p4, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 1690
    sget-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v2, p4, 0xf

    aget-char v0, v0, v2

    aput-char v0, p1, v1

    .line 1691
    add-int/lit8 p2, v1, -0x5

    goto :goto_0

    .line 1686
    :cond_3
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    .line 1687
    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    goto :goto_1

    .line 1694
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->o:[C

    .line 1695
    if-nez v0, :cond_5

    .line 1696
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k()[C

    move-result-object v0

    .line 1698
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1699
    const/16 v1, 0xff

    if-le p4, v1, :cond_6

    .line 1700
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1701
    and-int/lit16 v2, p4, 0xff

    .line 1702
    const/16 v3, 0xa

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1703
    const/16 v3, 0xb

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1704
    const/16 v1, 0xc

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1705
    const/16 v1, 0xd

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1706
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1708
    :cond_6
    sget-object v1, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v2, p4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1709
    const/4 v1, 0x7

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v3, p4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1710
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1716
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-nez v0, :cond_8

    .line 1717
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v0

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1722
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1723
    if-lt p2, v1, :cond_9

    if-ge p2, p3, :cond_9

    .line 1724
    sub-int/2addr p2, v1

    .line 1725
    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1719
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1720
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1727
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final a(CI)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x5c

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x6

    .line 1568
    if-ltz p2, :cond_2

    .line 1569
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v0, v4, :cond_0

    .line 1570
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, -0x2

    .line 1571
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1572
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v0

    .line 1573
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    .line 1646
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->o:[C

    .line 1578
    if-nez v0, :cond_1

    .line 1579
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k()[C

    move-result-object v0

    .line 1581
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1582
    const/4 v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1583
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1586
    :cond_2
    const/4 v0, -0x2

    if-eq p2, v0, :cond_7

    .line 1587
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v0, v6, :cond_4

    .line 1588
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 1589
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, -0x6

    .line 1590
    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1591
    aput-char v7, v1, v0

    .line 1592
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1594
    const/16 v2, 0xff

    if-le p1, v2, :cond_3

    .line 1595
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1596
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1597
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    .line 1598
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1603
    :goto_1
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 1604
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    goto :goto_0

    .line 1600
    :cond_3
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1601
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_1

    .line 1608
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->o:[C

    .line 1609
    if-nez v0, :cond_5

    .line 1610
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k()[C

    move-result-object v0

    .line 1612
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1613
    const/16 v1, 0xff

    if-le p1, v1, :cond_6

    .line 1614
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1615
    and-int/lit16 v2, p1, 0xff

    .line 1616
    const/16 v3, 0xa

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1617
    const/16 v3, 0xb

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1618
    const/16 v1, 0xc

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1619
    const/16 v1, 0xd

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1620
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1622
    :cond_6
    sget-object v1, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1623
    const/4 v1, 0x7

    sget-object v2, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1624
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_0

    .line 1630
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-nez v0, :cond_8

    .line 1631
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v0

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1636
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1637
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v2, v1, :cond_9

    .line 1638
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v2, v1

    .line 1639
    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1640
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_0

    .line 1633
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1634
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1644
    :cond_9
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1645
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1192
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int v1, v0, p1

    .line 1193
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1194
    array-length v0, v2

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1198
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-ge v0, v1, :cond_4

    .line 1203
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aget-char v4, v0, v4

    .line 1204
    if-ge v4, v3, :cond_2

    .line 1205
    aget v0, v2, v4

    .line 1206
    if-eqz v0, :cond_3

    .line 1217
    :goto_1
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    sub-int/2addr v5, v6

    .line 1218
    if-lez v5, :cond_1

    .line 1219
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/Writer;->write([CII)V

    .line 1221
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1222
    invoke-direct {p0, v4, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(CI)V

    goto :goto_0

    .line 1209
    :cond_2
    if-le v4, p2, :cond_3

    .line 1210
    const/4 v0, -0x1

    .line 1211
    goto :goto_1

    .line 1213
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v0, v1, :cond_0

    .line 1224
    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 305
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 311
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 313
    :cond_0
    if-eqz p2, :cond_1

    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 320
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void

    .line 326
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 328
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_3

    .line 331
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/SerializableString;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 345
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 347
    :cond_0
    if-eqz p2, :cond_1

    .line 348
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 353
    :cond_1
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->b()[C

    move-result-object v0

    .line 354
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b([CII)V

    .line 374
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v5, v1, v2

    .line 361
    array-length v1, v0

    .line 362
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v2, v3, :cond_4

    .line 363
    invoke-virtual {p0, v0, v4, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b([CII)V

    .line 365
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_3

    .line 366
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 368
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v5, v0, v1

    goto :goto_0

    .line 370
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v5, v0, v1

    goto :goto_0
.end method

.method private final a([CIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    add-int v3, p3, p2

    .line 1272
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1273
    array-length v0, v4

    add-int/lit8 v1, p4, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1275
    const/4 v0, 0x0

    move v2, p2

    .line 1277
    :goto_0
    if-ge v2, v3, :cond_6

    move v1, v2

    .line 1282
    :cond_0
    aget-char v6, p1, v1

    .line 1283
    if-ge v6, v5, :cond_3

    .line 1284
    aget v0, v4, v6

    .line 1285
    if-eqz v0, :cond_4

    .line 1293
    :goto_1
    sub-int v7, v1, v2

    .line 1299
    const/16 v8, 0x20

    if-ge v7, v8, :cond_5

    .line 1301
    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v8, v7

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v8, v9, :cond_1

    .line 1302
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1304
    :cond_1
    if-lez v7, :cond_2

    .line 1305
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, v2, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1306
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v2, v7

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1313
    :cond_2
    :goto_2
    if-ge v1, v3, :cond_6

    .line 1314
    add-int/lit8 v2, v1, 0x1

    .line 1318
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(CI)V

    goto :goto_0

    .line 1288
    :cond_3
    if-le v6, p4, :cond_4

    .line 1289
    const/4 v0, -0x1

    .line 1290
    goto :goto_1

    .line 1292
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_0

    goto :goto_1

    .line 1309
    :cond_5
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1310
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v8, p1, v2, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 1320
    :cond_6
    return-void
.end method

.method private final b(CI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x5c

    const/16 v4, 0x30

    .line 1739
    if-ltz p2, :cond_1

    .line 1740
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v0, v1, :cond_0

    .line 1741
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1743
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 1744
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1787
    :goto_0
    return-void

    .line 1747
    :cond_1
    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    .line 1748
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v0, v1, :cond_2

    .line 1749
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1751
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1752
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 1753
    add-int/lit8 v2, v0, 0x1

    aput-char v3, v1, v0

    .line 1754
    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 1756
    const/16 v2, 0xff

    if-le p1, v2, :cond_3

    .line 1757
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1758
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 1759
    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 1760
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1765
    :goto_1
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    shr-int/lit8 v4, p1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1766
    sget-object v0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 1767
    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    goto :goto_0

    .line 1762
    :cond_3
    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    .line 1763
    add-int/lit8 v0, v2, 0x1

    aput-char v4, v1, v2

    goto :goto_1

    .line 1771
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-nez v0, :cond_5

    .line 1772
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v0

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1777
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1778
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v2, v1

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v2, v3, :cond_6

    .line 1779
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1780
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v1, v2, :cond_6

    .line 1781
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1774
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    invoke-interface {v0}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    .line 1775
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    goto :goto_2

    .line 1785
    :cond_6
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1786
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    goto/16 :goto_0
.end method

.method private final b(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1229
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1230
    array-length v1, v6

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v2, v0

    move v1, v0

    .line 1237
    :goto_0
    if-ge v1, p1, :cond_5

    .line 1241
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    aget-char v4, v3, v1

    .line 1242
    if-ge v4, v7, :cond_2

    .line 1243
    aget v5, v6, v4

    .line 1244
    if-eqz v5, :cond_3

    .line 1252
    :goto_1
    sub-int v0, v1, v2

    .line 1256
    if-lez v0, :cond_1

    .line 1257
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {v3, v8, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1258
    if-ge v1, p1, :cond_5

    .line 1259
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1263
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1264
    goto :goto_0

    .line 1247
    :cond_2
    if-le v4, p2, :cond_4

    .line 1248
    const/4 v5, -0x1

    .line 1249
    goto :goto_1

    :cond_3
    move v0, v5

    .line 1251
    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    goto :goto_1

    .line 1265
    :cond_5
    return-void
.end method

.method private final b(J)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 694
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 695
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 697
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 698
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 699
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 700
    return-void
.end method

.method private final b(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 780
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 781
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 783
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 786
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 788
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 789
    return-void
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1497
    add-int/lit8 v1, p4, -0x3

    .line 1499
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    add-int/lit8 v2, v0, -0x6

    .line 1500
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 1503
    :cond_0
    :goto_0
    if-gt p3, v1, :cond_2

    .line 1504
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-le v3, v2, :cond_1

    .line 1505
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1508
    :cond_1
    add-int/lit8 v3, p3, 0x1

    aget-byte v4, p2, p3

    shl-int/lit8 v4, v4, 0x8

    .line 1509
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    .line 1510
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 p3, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 1511
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {p1, v3, v4, v5}, Lorg/codehaus/jackson/Base64Variant;->a(I[CI)I

    move-result v3

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1512
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v4, 0x5c

    aput-char v4, v0, v3

    .line 1515
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v4, 0x6e

    aput-char v4, v0, v3

    .line 1516
    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->c()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1521
    :cond_2
    sub-int v1, p4, p3

    .line 1522
    if-lez v1, :cond_5

    .line 1523
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-le v0, v2, :cond_3

    .line 1524
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1526
    :cond_3
    add-int/lit8 v2, p3, 0x1

    aget-byte v0, p2, p3

    shl-int/lit8 v0, v0, 0x10

    .line 1527
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 1528
    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1530
    :cond_4
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/codehaus/jackson/Base64Variant;->a(II[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1532
    :cond_5
    return-void
.end method

.method private final c(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 669
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 670
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 673
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 674
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 675
    return-void
.end method

.method private final c([CII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v0, :cond_1

    .line 1124
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d([CII)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-eqz v0, :cond_2

    .line 1128
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a([CIII)V

    goto :goto_0

    .line 1136
    :cond_2
    add-int v2, p3, p2

    .line 1137
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1138
    array-length v4, v3

    move v1, p2

    .line 1139
    :goto_1
    if-ge v1, v2, :cond_0

    move v0, v1

    .line 1143
    :cond_3
    aget-char v5, p1, v0

    .line 1144
    if-ge v5, v4, :cond_4

    aget v5, v3, v5

    if-nez v5, :cond_5

    .line 1145
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_3

    .line 1153
    :cond_5
    sub-int v5, v0, v1

    .line 1154
    const/16 v6, 0x20

    if-ge v5, v6, :cond_8

    .line 1156
    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v6, v5

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v6, v7, :cond_6

    .line 1157
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1159
    :cond_6
    if-lez v5, :cond_7

    .line 1160
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, v1, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1168
    :cond_7
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1169
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    .line 1173
    aget v5, v3, v0

    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(CI)V

    goto :goto_1

    .line 1164
    :cond_8
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1165
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v6, p1, v1, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_2
.end method

.method private d(I)V
    .locals 7
    .parameter

    .prologue
    .line 1004
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, p1

    .line 1005
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1006
    array-length v2, v1

    .line 1009
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-ge v3, v0, :cond_2

    .line 1013
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aget-char v3, v3, v4

    .line 1014
    if-ge v3, v2, :cond_1

    aget v3, v1, v3

    if-nez v3, :cond_3

    .line 1015
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v3, v0, :cond_0

    .line 1036
    :cond_2
    return-void

    .line 1026
    :cond_3
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    sub-int/2addr v3, v4

    .line 1027
    if-lez v3, :cond_4

    .line 1028
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    .line 1033
    :cond_4
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aget-char v3, v3, v4

    .line 1034
    aget v4, v1, v3

    invoke-direct {p0, v3, v4}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(CI)V

    goto :goto_0
.end method

.method private final d([CII)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1429
    add-int v4, p3, p2

    .line 1430
    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1431
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-gtz v0, :cond_3

    const v0, 0xffff

    .line 1432
    :goto_0
    array-length v1, v5

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1433
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1435
    const/4 v1, 0x0

    move v3, p2

    .line 1437
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1442
    :cond_0
    aget-char v8, p1, v2

    .line 1443
    if-ge v8, v6, :cond_4

    .line 1444
    aget v1, v5, v8

    .line 1445
    if-eqz v1, :cond_6

    .line 1458
    :goto_2
    sub-int v9, v2, v3

    .line 1464
    const/16 v10, 0x20

    if-ge v9, v10, :cond_7

    .line 1466
    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v10, v9

    iget v11, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v10, v11, :cond_1

    .line 1467
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1469
    :cond_1
    if-lez v9, :cond_2

    .line 1470
    iget-object v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v11, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, v3, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v3, v9

    iput v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1478
    :cond_2
    :goto_3
    if-ge v2, v4, :cond_8

    .line 1479
    add-int/lit8 v3, v2, 0x1

    .line 1483
    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(CI)V

    goto :goto_1

    .line 1431
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    goto :goto_0

    .line 1448
    :cond_4
    if-le v8, v0, :cond_5

    .line 1449
    const/4 v1, -0x1

    .line 1450
    goto :goto_2

    .line 1452
    :cond_5
    invoke-virtual {v7}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v9

    iput-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-eqz v9, :cond_6

    .line 1453
    const/4 v1, -0x2

    .line 1454
    goto :goto_2

    .line 1457
    :cond_6
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_0

    goto :goto_2

    .line 1474
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1475
    iget-object v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v10, p1, v3, v9}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 1485
    :cond_8
    return-void
.end method

.method private final e(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1079
    iget-object v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1080
    array-length v7, v6

    move v1, v0

    .line 1086
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1090
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    aget-char v4, v2, v0

    .line 1091
    if-ge v4, v7, :cond_1

    aget v2, v6, v4

    if-nez v2, :cond_2

    .line 1092
    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 1095
    :cond_2
    sub-int v2, v0, v1

    .line 1104
    if-lez v2, :cond_3

    .line 1105
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 1106
    if-ge v0, p1, :cond_4

    .line 1107
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 1112
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    aget v5, v6, v4

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a([CIICI)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 1113
    goto :goto_0

    .line 1114
    :cond_4
    return-void
.end method

.method private f(I)V
    .locals 11
    .parameter

    .prologue
    .line 1337
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int v2, v0, p1

    .line 1338
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1339
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-gtz v0, :cond_2

    const v0, 0xffff

    .line 1340
    :goto_0
    array-length v1, v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1342
    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 1345
    :goto_1
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-ge v1, v2, :cond_6

    .line 1350
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aget-char v6, v1, v6

    .line 1351
    if-ge v6, v4, :cond_3

    .line 1352
    aget v1, v3, v6

    .line 1353
    if-eqz v1, :cond_5

    .line 1369
    :goto_2
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    sub-int/2addr v7, v8

    .line 1370
    if-lez v7, :cond_1

    .line 1371
    iget-object v8, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V

    .line 1373
    :cond_1
    iget v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1374
    invoke-direct {p0, v6, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(CI)V

    goto :goto_1

    .line 1339
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    goto :goto_0

    .line 1356
    :cond_3
    if-le v6, v0, :cond_4

    .line 1357
    const/4 v1, -0x1

    .line 1358
    goto :goto_2

    .line 1360
    :cond_4
    invoke-virtual {v5}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-eqz v1, :cond_5

    .line 1361
    const/4 v1, -0x2

    .line 1362
    goto :goto_2

    .line 1365
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    if-lt v1, v2, :cond_0

    .line 1376
    :cond_6
    return-void
.end method

.method private final g(I)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1381
    iget-object v7, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g:[I

    .line 1382
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-gtz v0, :cond_2

    const v0, 0xffff

    move v6, v0

    .line 1383
    :goto_0
    array-length v0, v7

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1384
    iget-object v9, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    move v2, v1

    move v0, v1

    .line 1391
    :goto_1
    if-ge v1, p1, :cond_7

    .line 1395
    :cond_0
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    aget-char v4, v3, v1

    .line 1396
    if-ge v4, v8, :cond_3

    .line 1397
    aget v5, v7, v4

    .line 1398
    if-eqz v5, :cond_5

    .line 1411
    :goto_2
    sub-int v0, v1, v2

    .line 1415
    if-lez v0, :cond_1

    .line 1416
    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {v3, v10, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 1417
    if-ge v1, p1, :cond_7

    .line 1418
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1422
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1423
    goto :goto_1

    .line 1382
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    move v6, v0

    goto :goto_0

    .line 1401
    :cond_3
    if-le v4, v6, :cond_4

    .line 1402
    const/4 v5, -0x1

    .line 1403
    goto :goto_2

    .line 1405
    :cond_4
    invoke-virtual {v9}, Lorg/codehaus/jackson/io/CharacterEscapes;->a()Lorg/codehaus/jackson/SerializableString;

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j:Lorg/codehaus/jackson/SerializableString;

    if-eqz v3, :cond_6

    .line 1406
    const/4 v5, -0x2

    .line 1407
    goto :goto_2

    :cond_5
    move v0, v5

    .line 1410
    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    move v5, v0

    goto :goto_2

    .line 1424
    :cond_7
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 958
    if-eqz v0, :cond_0

    .line 959
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 960
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->e:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->b([C)V

    .line 962
    :cond_0
    return-void
.end method

.method private final j()V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    .line 1542
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 1543
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1545
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1546
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 1547
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1548
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1549
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1550
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1551
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1552
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 599
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v0, v1

    .line 601
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 603
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 607
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v1, v2, :cond_0

    .line 608
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    .line 609
    add-int v3, v0, v2

    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {p1, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 610
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 611
    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 612
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 613
    add-int/2addr v0, v2

    .line 614
    sub-int/2addr v1, v2

    .line 615
    goto :goto_0

    .line 617
    :cond_0
    add-int v2, v0, v1

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 618
    iput v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 619
    iput v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 620
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 979
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v0, v1, :cond_0

    .line 980
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l(Ljava/lang/String;)V

    .line 998
    :goto_0
    return-void

    .line 986
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-le v1, v2, :cond_1

    .line 987
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 989
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 991
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v1, :cond_2

    .line 992
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f(I)V

    goto :goto_0

    .line 993
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-eqz v1, :cond_3

    .line 994
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(II)V

    goto :goto_0

    .line 996
    :cond_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d(I)V

    goto :goto_0
.end method

.method private k()[C
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1791
    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 1793
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1795
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1796
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1797
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1798
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1800
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1801
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1802
    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->o:[C

    .line 1803
    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1808
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    sub-int/2addr v0, v1

    .line 1809
    if-lez v0, :cond_0

    .line 1810
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    .line 1811
    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l:I

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 1812
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1814
    :cond_0
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1046
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    .line 1052
    :cond_0
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    .line 1053
    add-int v4, v0, v2

    if-le v4, v3, :cond_1

    sub-int v2, v3, v0

    .line 1055
    :cond_1
    add-int v4, v0, v2

    iget-object v5, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    invoke-virtual {p1, v0, v4, v5, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1056
    iget-object v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v4, :cond_2

    .line 1057
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g(I)V

    .line 1063
    :goto_0
    add-int/2addr v0, v2

    .line 1064
    if-lt v0, v3, :cond_0

    .line 1065
    return-void

    .line 1058
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    if-eqz v4, :cond_3

    .line 1059
    iget v4, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    invoke-direct {p0, v2, v4}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(II)V

    goto :goto_0

    .line 1061
    :cond_3
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->e(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lorg/codehaus/jackson/JsonGenerator;
    .locals 1
    .parameter

    .prologue
    .line 143
    const/16 v0, 0x7f

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h:I

    .line 144
    return-object p0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 241
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->g()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 243
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 247
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    .line 251
    return-void
.end method

.method public final a(C)V
    .locals 3
    .parameter

    .prologue
    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 591
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char p1, v0, v1

    .line 594
    return-void
.end method

.method public final a(D)V
    .locals 1
    .parameter

    .prologue
    .line 723
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 727
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/String;)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 732
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 739
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_2
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 681
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-eqz v0, :cond_0

    .line 683
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(J)V

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 688
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 690
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v1

    .line 194
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 195
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 197
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Ljava/lang/String;Z)V

    .line 198
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter

    .prologue
    .line 756
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 757
    if-nez p1, :cond_0

    .line 758
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j()V

    .line 764
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/math/BigInteger;)V
    .locals 1
    .parameter

    .prologue
    .line 708
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j()V

    .line 716
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 632
    const-string v0, "write binary value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 634
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 635
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 638
    add-int v0, p3, p4

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 640
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 641
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 643
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 644
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/SerializableString;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v1

    .line 226
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 227
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 229
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/SerializableString;Z)V

    .line 230
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    move-result v1

    .line 214
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 215
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 217
    :cond_0
    if-ne v1, v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/SerializableString;Z)V

    .line 218
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x65

    .line 795
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 796
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 797
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 799
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 800
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    .line 801
    if-eqz p1, :cond_1

    .line 802
    const/16 v2, 0x74

    aput-char v2, v1, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 805
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 813
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 814
    return-void

    .line 807
    :cond_1
    const/16 v2, 0x66

    aput-char v2, v1, v0

    .line 808
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    .line 810
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_0
.end method

.method public final a([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 460
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 462
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c([CII)V

    .line 467
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 468
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 471
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 263
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 268
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 656
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 659
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 661
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-eqz v0, :cond_1

    .line 662
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(I)V

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->a(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 439
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 440
    if-nez p1, :cond_0

    .line 441
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j()V

    .line 454
    :goto_0
    return-void

    .line 444
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 445
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 447
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    .line 448
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k(Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_2

    .line 451
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 453
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v3, v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/SerializableString;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 477
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 478
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 479
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v5, v0, v1

    .line 483
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->b()[C

    move-result-object v0

    .line 484
    array-length v1, v0

    .line 486
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    .line 487
    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v2, v3

    .line 488
    if-le v1, v2, :cond_1

    .line 489
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 491
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 498
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_2

    .line 499
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 501
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v5, v0, v1

    .line 502
    return-void

    .line 495
    :cond_3
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 496
    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public final b([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 573
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v0, v1

    .line 574
    if-le p3, v0, :cond_0

    .line 575
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 583
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 273
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 275
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_0

    .line 279
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    .line 283
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 532
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v0, v2

    .line 534
    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 536
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    sub-int/2addr v0, v2

    .line 539
    :cond_0
    if-lt v0, v1, :cond_1

    .line 540
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 915
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 921
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    if-eqz v0, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->g()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b()V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->d()V

    goto :goto_0

    .line 934
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 942
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->e:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->c()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 944
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 951
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i()V

    .line 952
    return-void

    .line 945
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 292
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v0, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 298
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 300
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 820
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->j()V

    .line 822
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 770
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->h(Ljava/lang/String;)V

    .line 771
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a:Z

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b(Ljava/lang/Object;)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 903
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 904
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 905
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->f:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 909
    :cond_0
    return-void
.end method

.method protected final h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 834
    iget-object v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->b:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->j()I

    move-result v0

    .line 835
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 836
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

    invoke-static {v1}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->i(Ljava/lang/String;)V

    .line 838
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 859
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const/16 v0, 0x2c

    .line 854
    :goto_1
    iget v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->n:I

    if-lt v1, v2, :cond_1

    .line 855
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->l()V

    .line 857
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->k:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    aput-char v0, v1, v2

    .line 858
    iget v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/WriterBasedGenerator;->m:I

    goto :goto_0

    .line 845
    :pswitch_1
    const/16 v0, 0x3a

    .line 846
    goto :goto_1

    .line 848
    :pswitch_2
    const/16 v0, 0x20

    .line 849
    goto :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
