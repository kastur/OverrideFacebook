.class public abstract Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserBase;
.source "JsonNumericParserBase.java"


# static fields
.field private static r:Ljava/math/BigDecimal;

.field private static s:Ljava/math/BigDecimal;

.field private static t:Ljava/math/BigDecimal;

.field private static u:Ljava/math/BigDecimal;


# instance fields
.field private A:Ljava/math/BigDecimal;

.field private B:Z

.field private C:I

.field private v:I

.field private w:I

.field private x:J

.field private y:D

.field private z:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 41
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->r:Ljava/math/BigDecimal;

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->s:Ljava/math/BigDecimal;

    .line 44
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->t:Ljava/math/BigDecimal;

    .line 45
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->u:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 144
    return-void
.end method

.method private J()V
    .locals 5

    .prologue
    .line 458
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 460
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    long-to-int v0, v0

    .line 461
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    .line 464
    :cond_0
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    .line 484
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 485
    return-void

    .line 465
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    goto :goto_0

    .line 468
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 470
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 471
    :cond_3
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->O()V

    .line 473
    :cond_4
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    double-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    goto :goto_0

    .line 474
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 475
    sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->t:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->u:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_7

    .line 477
    :cond_6
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->O()V

    .line 479
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    goto :goto_0

    .line 481
    :cond_8
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    goto :goto_0
.end method

.method private K()V
    .locals 4

    .prologue
    .line 490
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 491
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    .line 511
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 512
    return-void

    .line 492
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    goto :goto_0

    .line 495
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 497
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 498
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->P()V

    .line 500
    :cond_3
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    goto :goto_0

    .line 501
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 502
    sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->r:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_5

    sget-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->s:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_6

    .line 504
    :cond_5
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->P()V

    .line 506
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    goto :goto_0

    .line 508
    :cond_7
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    goto :goto_0
.end method

.method private L()V
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    .line 529
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 530
    return-void

    .line 520
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 521
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    goto :goto_0

    .line 522
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 523
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    goto :goto_0

    .line 524
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 525
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    goto :goto_0

    .line 527
    :cond_3
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    goto :goto_0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    .line 553
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 554
    return-void

    .line 543
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    goto :goto_0

    .line 545
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 546
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    goto :goto_0

    .line 547
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 548
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    goto :goto_0

    .line 550
    :cond_3
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    goto :goto_0
.end method

.method private N()V
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    .line 580
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 581
    return-void

    .line 571
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 572
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    goto :goto_0

    .line 573
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 574
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    goto :goto_0

    .line 575
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 576
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    goto :goto_0

    .line 578
    :cond_3
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    goto :goto_0
.end method

.method private O()V
    .locals 2

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int (-2147483648"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long (-9223372036854775808"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 9223372036854775807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method private final a([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v1

    .line 433
    :try_start_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    invoke-static {p1, p2, p3, v0}, Lorg/codehaus/jackson/io/NumberInput;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    .line 436
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 446
    :goto_0
    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    .line 440
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed numeric value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 355
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()[C

    move-result-object v1

    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v0

    .line 357
    iget v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->C:I

    .line 358
    iget-boolean v3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    if-eqz v3, :cond_0

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 361
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 362
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/io/NumberInput;->a([CII)I

    move-result v0

    .line 363
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    .line 364
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 400
    :goto_0
    return-void

    .line 367
    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 368
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/io/NumberInput;->b([CII)J

    move-result-wide v0

    .line 369
    iget-boolean v3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    if-eqz v3, :cond_3

    .line 370
    neg-long v0, v0

    .line 373
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 374
    iget-boolean v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    if-eqz v2, :cond_4

    .line 375
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 376
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    .line 377
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    goto :goto_0

    .line 381
    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 382
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    .line 383
    iput v4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    goto :goto_0

    .line 388
    :cond_5
    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    .line 389
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    goto :goto_0

    .line 392
    :cond_6
    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->a([CII)V

    goto :goto_0

    .line 395
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_8

    .line 396
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(I)V

    goto :goto_0

    .line 399
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final d(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x10

    .line 413
    if-ne p1, v0, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->g()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    .line 415
    const/16 v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->h()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    .line 419
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TextBuffer;->a(Ljava/lang/String;)V

    .line 177
    iput-wide p2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    .line 178
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 179
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZI)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    .line 157
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->C:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 161
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    if-gtz p3, :cond_0

    if-gtz p4, :cond_0

    .line 149
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    if-eqz p2, :cond_0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method protected final b(ZIII)Lorg/codehaus/jackson/JsonToken;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->B:Z

    .line 167
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->C:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    .line 171
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->d(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public final p()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 196
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 197
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 199
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 200
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_2
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    goto :goto_0

    .line 212
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    goto :goto_0

    .line 215
    :cond_5
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 216
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->I()V

    .line 218
    :cond_6
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 228
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 246
    :goto_0
    return-object v0

    .line 231
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 232
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 234
    :cond_2
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 246
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 253
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 256
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 257
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->J()V

    .line 260
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->w:I

    return v0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 267
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 270
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 271
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->K()V

    .line 274
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x:J

    return-wide v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 281
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 284
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 285
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->L()V

    .line 288
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->z:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final w()F
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->x()D

    move-result-wide v0

    .line 303
    double-to-float v0, v0

    return v0
.end method

.method public final x()D
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 310
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 311
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 313
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->M()V

    .line 317
    :cond_1
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->y:D

    return-wide v0
.end method

.method public final y()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 324
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    if-nez v0, :cond_0

    .line 325
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->c(I)V

    .line 327
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->v:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 328
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->N()V

    .line 331
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->A:Ljava/math/BigDecimal;

    return-object v0
.end method
