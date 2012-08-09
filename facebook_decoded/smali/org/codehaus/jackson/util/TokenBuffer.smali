.class public Lorg/codehaus/jackson/util/TokenBuffer;
.super Lorg/codehaus/jackson/JsonGenerator;
.source "TokenBuffer.java"


# static fields
.field private static a:I


# instance fields
.field private b:Lorg/codehaus/jackson/ObjectCodec;

.field private c:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field private d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field private e:I

.field private f:Lorg/codehaus/jackson/impl/JsonWriteContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/codehaus/jackson/JsonParser$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/util/TokenBuffer;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->b:Lorg/codehaus/jackson/ObjectCodec;

    .line 99
    sget v0, Lorg/codehaus/jackson/util/TokenBuffer;->a:I

    .line 100
    invoke-static {}, Lorg/codehaus/jackson/impl/JsonWriteContext;->f()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 102
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->c:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    .line 104
    return-void
.end method

.method private a(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .parameter

    .prologue
    .line 136
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->c:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .locals 2
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(ILorg/codehaus/jackson/JsonToken;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    .line 728
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(ILorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 737
    if-nez v0, :cond_0

    .line 738
    iget v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 741
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->e:I

    goto :goto_0
.end method

.method private c(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 625
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->c()V

    .line 683
    :goto_0
    return-void

    .line 630
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->a()V

    goto :goto_0

    .line 636
    :pswitch_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->b()V

    goto :goto_0

    .line 639
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :pswitch_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->l()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->n()I

    move-result v1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer;->a([CII)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_6
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 657
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(J)V

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->b(I)V

    goto :goto_0

    .line 654
    :pswitch_8
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 661
    :pswitch_9
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 669
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->x()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(D)V

    goto :goto_0

    .line 663
    :pswitch_a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 666
    :pswitch_b
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->w()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(F)V

    goto :goto_0

    .line 673
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Z)V

    goto/16 :goto_0

    .line 676
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Z)V

    goto/16 :goto_0

    .line 679
    :pswitch_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    goto/16 :goto_0

    .line 682
    :pswitch_f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 661
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static h()V
    .locals 2

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->g()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 371
    return-void
.end method

.method public final a(C)V
    .locals 0
    .parameter

    .prologue
    .line 491
    invoke-static {}, Lorg/codehaus/jackson/util/TokenBuffer;->h()V

    .line 492
    return-void
.end method

.method public final a(D)V
    .locals 2
    .parameter

    .prologue
    .line 527
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 532
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 522
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 582
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 409
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .locals 1
    .parameter

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/math/BigInteger;)V
    .locals 1
    .parameter

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;[BII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    new-array v0, p4, [B

    .line 612
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lorg/codehaus/jackson/util/TokenBuffer;->c:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 170
    const/4 v1, -0x1

    move v0, v1

    move-object v1, v3

    .line 173
    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-lt v0, v3, :cond_a

    .line 175
    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_9

    move v1, v2

    move-object v3, v0

    .line 178
    :goto_1
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_9

    .line 182
    sget-object v4, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    move v0, v1

    move-object v1, v3

    .line 185
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    move v0, v1

    move-object v1, v3

    .line 188
    goto :goto_0

    .line 190
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    move v0, v1

    move-object v1, v3

    .line 191
    goto :goto_0

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    move v0, v1

    move-object v1, v3

    .line 194
    goto :goto_0

    .line 198
    :pswitch_4
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 199
    instance-of v4, v0, Lorg/codehaus/jackson/SerializableString;

    if-eqz v4, :cond_0

    .line 200
    check-cast v0, Lorg/codehaus/jackson/SerializableString;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/SerializableString;)V

    :goto_2
    move v0, v1

    move-object v1, v3

    .line 261
    goto :goto_0

    .line 202
    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    move v0, v1

    move-object v1, v3

    .line 205
    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 209
    instance-of v4, v0, Lorg/codehaus/jackson/SerializableString;

    if-eqz v4, :cond_1

    .line 210
    check-cast v0, Lorg/codehaus/jackson/SerializableString;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Lorg/codehaus/jackson/SerializableString;)V

    goto :goto_2

    .line 212
    :cond_1
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    move v0, v1

    move-object v1, v3

    .line 215
    goto :goto_0

    .line 218
    :pswitch_6
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 219
    instance-of v4, v0, Ljava/math/BigInteger;

    if-eqz v4, :cond_2

    .line 220
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 221
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    goto :goto_2

    .line 224
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    move v0, v1

    move-object v1, v3

    .line 227
    goto/16 :goto_0

    .line 230
    :pswitch_7
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v4, v0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_4

    .line 232
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 233
    :cond_4
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 234
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(F)V

    goto :goto_2

    .line 235
    :cond_5
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_6

    .line 236
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(D)V

    goto :goto_2

    .line 237
    :cond_6
    if-nez v0, :cond_7

    .line 238
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    goto :goto_2

    .line 239
    :cond_7
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 240
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    :cond_8
    new-instance v1, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", can not serialize"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    move v0, v1

    move-object v1, v3

    .line 248
    goto/16 :goto_0

    .line 250
    :pswitch_9
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    move v0, v1

    move-object v1, v3

    .line 251
    goto/16 :goto_0

    .line 253
    :pswitch_a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    move v0, v1

    move-object v1, v3

    .line 254
    goto/16 :goto_0

    .line 256
    :pswitch_b
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/Object;)V

    move v0, v1

    move-object v1, v3

    .line 257
    goto/16 :goto_0

    .line 262
    :cond_9
    return-void

    :cond_a
    move-object v3, v1

    move v1, v0

    goto/16 :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 691
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 694
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 700
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->c(Lorg/codehaus/jackson/JsonParser;)V

    .line 718
    :goto_0
    return-void

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->a()V

    .line 703
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->b()V

    goto :goto_0

    .line 709
    :pswitch_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->c()V

    .line 710
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 713
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lorg/codehaus/jackson/SerializableString;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->a(Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 563
    if-eqz p1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_0
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 564
    return-void

    .line 563
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public final a([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->b(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;
    .locals 3
    .parameter

    .prologue
    .line 145
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer;->c:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;-><init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V

    .line 146
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/JsonLocation;)V

    .line 147
    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 383
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 517
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .parameter

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->e()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->h()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 391
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    invoke-static {}, Lorg/codehaus/jackson/util/TokenBuffer;->h()V

    .line 477
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 399
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->i()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->f:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 403
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    invoke-static {}, Lorg/codehaus/jackson/util/TokenBuffer;->h()V

    .line 497
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 568
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 569
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 558
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public final g()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer;->b:Lorg/codehaus/jackson/ObjectCodec;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v0, "[TokenBuffer: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer;->g()Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 273
    const/4 v0, 0x0

    .line 278
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 282
    if-eqz v3, :cond_2

    .line 283
    if-ge v0, v5, :cond_1

    .line 284
    if-lez v0, :cond_0

    .line 285
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 290
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 292
    :cond_2
    if-lt v0, v5, :cond_3

    .line 293
    const-string v2, " ... (truncated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x64

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entries)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
