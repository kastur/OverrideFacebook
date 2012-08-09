.class public final Lorg/codehaus/jackson/impl/Utf8StreamParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8StreamParser.java"


# static fields
.field private static final s:[I

.field private static final t:[I


# instance fields
.field private u:Lorg/codehaus/jackson/ObjectCodec;

.field private v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

.field private w:[I

.field private x:Z

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->b()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s:[I

    .line 25
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->a()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->u:Lorg/codehaus/jackson/ObjectCodec;

    .line 81
    iput-object p5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 83
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->I()V

    .line 87
    :cond_0
    return-void
.end method

.method private final J()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p:Z

    .line 442
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 443
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 445
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 450
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 447
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_0
.end method

.method private final K()I
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 587
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 590
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 592
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 593
    goto :goto_0

    .line 596
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 597
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Ljava/lang/String;)V

    .line 600
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 601
    if-ne v0, v1, :cond_0

    .line 602
    :cond_5
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 604
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 605
    goto :goto_0

    .line 607
    :cond_8
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 608
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private L()Lorg/codehaus/jackson/sym/Name;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 884
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 885
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 890
    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    .line 891
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 893
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private M()Lorg/codehaus/jackson/sym/Name;
    .locals 12

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    .line 1093
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v2, :cond_0

    .line 1094
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1098
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    .line 1099
    if-ne v5, v10, :cond_1

    .line 1100
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1193
    :goto_0
    return-object v0

    .line 1102
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1109
    sget-object v7, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t:[I

    move v3, v1

    move v4, v1

    move v2, v1

    .line 1112
    :goto_1
    if-eq v5, v10, :cond_9

    .line 1113
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    .line 1117
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    .line 1120
    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    .line 1130
    :goto_2
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    .line 1132
    if-lt v3, v9, :cond_e

    .line 1133
    array-length v3, v0

    if-lt v2, v3, :cond_2

    .line 1134
    array-length v3, v0

    invoke-static {v0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1136
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    .line 1140
    :goto_3
    const/16 v6, 0x800

    if-ge v5, v6, :cond_5

    .line 1141
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    .line 1142
    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    .line 1160
    :goto_4
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    .line 1164
    :goto_5
    if-ge v2, v9, :cond_7

    .line 1165
    add-int/lit8 v2, v2, 0x1

    .line 1166
    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    .line 1175
    :goto_6
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v5, v6, :cond_3

    .line 1176
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1177
    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1180
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto :goto_1

    .line 1123
    :cond_4
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    move-result v5

    goto :goto_2

    .line 1145
    :cond_5
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    .line 1146
    add-int/lit8 v2, v2, 0x1

    .line 1148
    if-lt v2, v9, :cond_d

    .line 1149
    array-length v2, v0

    if-lt v4, v2, :cond_6

    .line 1150
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1152
    :cond_6
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1156
    :goto_7
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1157
    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_4

    .line 1168
    :cond_7
    array-length v2, v0

    if-lt v4, v2, :cond_8

    .line 1169
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1171
    :cond_8
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    .line 1173
    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_6

    .line 1183
    :cond_9
    if-lez v3, :cond_c

    .line 1184
    array-length v1, v0

    if-lt v2, v1, :cond_a

    .line 1185
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1187
    :cond_a
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 1189
    :goto_8
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 1190
    if-nez v2, :cond_b

    .line 1191
    invoke-direct {p0, v1, v0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto :goto_8

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_7

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_3

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_5
.end method

.method private N()V
    .locals 9

    .prologue
    .line 1369
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1370
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 1371
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 1372
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1374
    :cond_0
    const/4 v1, 0x0

    .line 1375
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v3

    .line 1376
    sget-object v4, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s:[I

    .line 1378
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1379
    iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    move v8, v1

    move v1, v0

    move v0, v8

    .line 1380
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1381
    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    .line 1382
    aget v2, v4, v7

    if-eqz v2, :cond_1

    .line 1383
    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    .line 1384
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1385
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1395
    :goto_1
    return-void

    .line 1390
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1391
    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    .line 1392
    goto :goto_0

    .line 1393
    :cond_2
    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1394
    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CI)V

    goto :goto_1
.end method

.method private O()V
    .locals 6

    .prologue
    .line 1489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 1492
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s:[I

    .line 1493
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    .line 1501
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1502
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    .line 1503
    if-lt v1, v0, :cond_0

    .line 1504
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 1505
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1506
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    .line 1508
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1509
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    .line 1510
    aget v5, v3, v1

    if-eqz v5, :cond_4

    .line 1511
    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1518
    const/16 v0, 0x22

    if-eq v1, v0, :cond_3

    .line 1519
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 1536
    const/16 v0, 0x20

    if-ge v1, v0, :cond_2

    .line 1538
    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 1515
    :cond_1
    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    goto :goto_0

    .line 1524
    :pswitch_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    goto :goto_0

    .line 1527
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->W()V

    goto :goto_0

    .line 1530
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->X()V

    goto :goto_0

    .line 1533
    :pswitch_3
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Y()V

    goto :goto_0

    .line 1541
    :cond_2
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)V

    goto :goto_0

    .line 1545
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1

    .line 1519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private P()Lorg/codehaus/jackson/JsonToken;
    .locals 10

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 1588
    .line 1591
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v0

    .line 1594
    sget-object v6, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s:[I

    .line 1595
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    move v1, v2

    .line 1602
    :cond_0
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v3, v4, :cond_1

    .line 1603
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 1605
    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 1606
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v0

    move v1, v2

    .line 1609
    :cond_2
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    .line 1611
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 1612
    if-ge v3, v4, :cond_a

    .line 1616
    :goto_1
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    if-ge v4, v3, :cond_0

    .line 1617
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    .line 1618
    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-nez v4, :cond_3

    .line 1619
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 1626
    :cond_3
    if-eq v5, v9, :cond_7

    .line 1627
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    .line 1658
    const/16 v3, 0x20

    if-ge v5, v3, :cond_4

    .line 1659
    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    .line 1662
    :cond_4
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)V

    :cond_5
    move v3, v5

    .line 1665
    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_8

    .line 1666
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v0

    move v4, v2

    .line 1670
    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    .line 1632
    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_5

    .line 1633
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    move-result v3

    goto :goto_2

    .line 1637
    :pswitch_1
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j(I)I

    move-result v3

    goto :goto_2

    .line 1640
    :pswitch_2
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 1641
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l(I)I

    move-result v3

    goto :goto_2

    .line 1643
    :cond_6
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)I

    move-result v3

    goto :goto_2

    .line 1647
    :pswitch_3
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m(I)I

    move-result v4

    .line 1649
    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    .line 1650
    array-length v1, v0

    if-lt v3, v1, :cond_9

    .line 1651
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v0

    move v1, v2

    .line 1654
    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    .line 1656
    goto :goto_2

    .line 1672
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1674
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_8
    move v4, v1

    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_4

    :cond_a
    move v3, v4

    goto/16 :goto_1

    .line 1627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final Q()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1799
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1800
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1801
    if-le v0, v3, :cond_3

    .line 1802
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1803
    return v0

    .line 1805
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->S()V

    goto :goto_0

    .line 1806
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1807
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1808
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->aa()V

    goto :goto_0

    .line 1809
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1810
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Z()V

    goto :goto_0

    .line 1811
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1812
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    goto :goto_0

    .line 1816
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final R()I
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1822
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1823
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1824
    if-le v0, v3, :cond_3

    .line 1825
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    .line 1841
    :goto_1
    return v0

    .line 1828
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->S()V

    goto :goto_0

    .line 1829
    :cond_3
    if-eq v0, v3, :cond_0

    .line 1830
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1831
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->aa()V

    goto :goto_0

    .line 1832
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 1833
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Z()V

    goto :goto_0

    .line 1834
    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1835
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    goto :goto_0

    .line 1840
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->E()V

    .line 1841
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final S()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 1847
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1851
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1852
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1854
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1855
    if-ne v0, v3, :cond_2

    .line 1856
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->U()V

    .line 1862
    :goto_0
    return-void

    .line 1857
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 1858
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->T()V

    goto :goto_0

    .line 1860
    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final T()V
    .locals 4

    .prologue
    .line 1868
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->e()[I

    move-result-object v0

    .line 1871
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1872
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1873
    aget v2, v0, v1

    .line 1874
    if-eqz v2, :cond_0

    .line 1875
    sparse-switch v2, :sswitch_data_0

    .line 1890
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)V

    goto :goto_0

    .line 1877
    :sswitch_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 1878
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1895
    :goto_1
    return-void

    .line 1883
    :sswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->aa()V

    goto :goto_0

    .line 1886
    :sswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Z()V

    goto :goto_0

    .line 1894
    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1875
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final U()V
    .locals 4

    .prologue
    .line 1901
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->e()[I

    move-result-object v0

    .line 1902
    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1903
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 1904
    aget v2, v0, v1

    .line 1905
    if-eqz v2, :cond_0

    .line 1906
    sparse-switch v2, :sswitch_data_0

    .line 1917
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)V

    goto :goto_0

    .line 1908
    :sswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->aa()V

    .line 1921
    :cond_2
    :goto_1
    return-void

    .line 1911
    :sswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Z()V

    goto :goto_1

    .line 1906
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private V()C
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1926
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_0

    .line 1927
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1928
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1931
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 1933
    sparse-switch v1, :sswitch_data_0

    .line 1956
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(C)C

    move-result v0

    .line 1974
    :goto_0
    return v0

    .line 1936
    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 1938
    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1940
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 1942
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 1944
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 1950
    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    .line 1961
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 1962
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v2, v3, :cond_1

    .line 1963
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1964
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1967
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v2, v2, v3

    .line 1968
    invoke-static {v2}, Lorg/codehaus/jackson/util/CharTypes;->a(I)I

    move-result v3

    .line 1969
    if-gez v3, :cond_2

    .line 1970
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1972
    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1974
    :cond_3
    int-to-char v0, v1

    goto :goto_0

    .line 1933
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method private final W()V
    .locals 3

    .prologue
    .line 2124
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2125
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2127
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2128
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2129
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2131
    :cond_1
    return-void
.end method

.method private final X()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2139
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2140
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2143
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2144
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2145
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2147
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_2

    .line 2148
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2150
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2151
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2152
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2154
    :cond_3
    return-void
.end method

.method private final Y()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 2159
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2160
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2162
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2163
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    .line 2164
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2166
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_2

    .line 2167
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2169
    :cond_2
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    .line 2170
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2172
    :cond_3
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_4

    .line 2173
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2175
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2176
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    .line 2177
    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2179
    :cond_5
    return-void
.end method

.method private Z()V
    .locals 2

    .prologue
    .line 2193
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2195
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 2198
    :cond_1
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:I

    .line 2199
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:I

    .line 2200
    return-void
.end method

.method private final a(Lorg/codehaus/jackson/Base64Variant;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2383
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 2384
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2386
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    move-result v1

    .line 2388
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 2389
    if-nez p3, :cond_2

    .line 2390
    const/4 v0, -0x1

    .line 2398
    :cond_1
    return v0

    .line 2394
    :cond_2
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v0

    .line 2395
    if-gez v0, :cond_1

    .line 2396
    invoke-direct {p0, p1, v1, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2415
    const/16 v0, 0x20

    if-gt p1, v0, :cond_1

    .line 2416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2425
    :goto_0
    if-eqz p3, :cond_0

    .line 2426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2428
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2417
    :cond_1
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/Base64Variant;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2419
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2421
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2423
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 1684
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 1685
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v5, :cond_0

    .line 1686
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H()V

    .line 1690
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte p1, v0, v5

    .line 1691
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 1692
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 1693
    :goto_0
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    .line 1694
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1695
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1710
    :goto_2
    return-object v0

    .line 1692
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 1695
    goto :goto_1

    .line 1697
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 1709
    :cond_4
    :goto_3
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 1710
    const/4 v0, 0x0

    goto :goto_2

    .line 1699
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 1700
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 1701
    :goto_4
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    .line 1702
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1703
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 1700
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v1, v3

    .line 1703
    goto :goto_5

    .line 1705
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private final a([CIIZI)Lorg/codehaus/jackson/JsonToken;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    const/4 v4, 0x0

    .line 624
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_11

    .line 625
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 629
    :goto_0
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v2, v3, :cond_a

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v2

    if-nez v2, :cond_a

    .line 630
    const/4 v4, 0x1

    .line 645
    :cond_0
    if-nez v0, :cond_1

    .line 646
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    :cond_1
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 650
    :goto_1
    const/4 v3, 0x0

    .line 651
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2

    const/16 v2, 0x45

    if-ne p3, v2, :cond_f

    .line 652
    :cond_2
    array-length v2, v1

    if-lt v0, v2, :cond_3

    .line 653
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 654
    const/4 v0, 0x0

    .line 656
    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 658
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v5, :cond_4

    .line 659
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 661
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 663
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_5

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    .line 664
    :cond_5
    array-length v0, v1

    if-lt v2, v0, :cond_d

    .line 665
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 666
    const/4 v0, 0x0

    .line 668
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 670
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v5, :cond_6

    .line 671
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 673
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 677
    :goto_3
    const/16 v3, 0x39

    if-gt v5, v3, :cond_c

    const/16 v3, 0x30

    if-lt v5, v3, :cond_c

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 679
    array-length v3, v1

    if-lt v0, v3, :cond_7

    .line 680
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 681
    const/4 v0, 0x0

    .line 683
    :cond_7
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 684
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v7, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_b

    .line 685
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 691
    :goto_4
    if-nez v0, :cond_8

    .line 692
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ILjava/lang/String;)V

    .line 697
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 698
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 700
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 703
    invoke-virtual {p0, p4, p5, v6, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 633
    :cond_a
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 634
    const/16 v2, 0x30

    if-lt p3, v2, :cond_0

    const/16 v2, 0x39

    if-gt p3, v2, :cond_0

    .line 635
    add-int/lit8 v0, v0, 0x1

    .line 638
    array-length v2, p1

    if-lt v1, v2, :cond_10

    .line 639
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object p1

    .line 640
    const/4 v1, 0x0

    move v2, v1

    .line 642
    :goto_6
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    .line 688
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_3

    :cond_c
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_d
    move v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    move v2, v3

    goto/16 :goto_3

    :cond_f
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_10
    move v2, v1

    goto :goto_6

    :cond_11
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_1
.end method

.method private final a([CIZI)Lorg/codehaus/jackson/JsonToken;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 555
    invoke-virtual {p0, p3, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 575
    :goto_1
    return-object v0

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 558
    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    .line 559
    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    .line 560
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 564
    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v1

    .line 566
    const/4 v2, 0x0

    move v0, v2

    .line 568
    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    .line 569
    add-int/lit8 v5, v5, 0x1

    .line 570
    goto :goto_0

    .line 571
    :cond_4
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 572
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 575
    invoke-virtual {p0, p3, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private final a(II)Lorg/codehaus/jackson/sym/Name;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1207
    if-eqz v0, :cond_0

    .line 1212
    :goto_0
    return-object v0

    .line 1211
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1212
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(III)Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 906
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private a(I[I)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    .line 779
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 780
    aget v1, p2, v0

    if-eqz v1, :cond_1

    .line 781
    if-ne v0, v4, :cond_0

    .line 782
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v0, p1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 812
    :goto_0
    return-object v0

    .line 784
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v1, p1, v0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 787
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 788
    aget v2, p2, v1

    if-eqz v2, :cond_3

    .line 789
    if-ne v1, v4, :cond_2

    .line 790
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v1, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_2
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v2, v0, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 795
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 796
    aget v2, p2, v1

    if-eqz v2, :cond_5

    .line 797
    if-ne v1, v4, :cond_4

    .line 798
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v1, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v2, v0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 803
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 804
    aget v2, p2, v1

    if-eqz v2, :cond_7

    .line 805
    if-ne v1, v4, :cond_6

    .line 806
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v1, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_6
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    invoke-direct {p0, v2, v0, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_7
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    aput v4, v2, v3

    .line 811
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    aput v0, v2, v5

    .line 812
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->f(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private final a([III)Lorg/codehaus/jackson/sym/Name;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1257
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1266
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    .line 1267
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1269
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1275
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v1

    .line 1276
    const/4 v5, 0x0

    .line 1278
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    .line 1279
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1280
    and-int/lit8 v4, v3, 0x3

    .line 1281
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1282
    add-int/lit8 v3, v3, 0x1

    .line 1284
    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    .line 1286
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    .line 1287
    and-int/lit8 v4, v2, 0x1f

    .line 1288
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1299
    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    .line 1300
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1304
    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1305
    and-int/lit8 v8, v3, 0x3

    .line 1306
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1307
    add-int/lit8 v3, v3, 0x1

    .line 1309
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    .line 1310
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 1312
    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1313
    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    .line 1314
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1315
    and-int/lit8 v8, v3, 0x3

    .line 1316
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1317
    add-int/lit8 v3, v3, 0x1

    .line 1319
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    .line 1320
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 1322
    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1323
    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    .line 1324
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1325
    and-int/lit8 v8, v3, 0x3

    .line 1326
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1327
    add-int/lit8 v3, v3, 0x1

    .line 1328
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    .line 1329
    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 1331
    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1334
    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    .line 1335
    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    .line 1336
    array-length v4, v1

    if-lt v5, v4, :cond_5

    .line 1337
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v1

    .line 1339
    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 1340
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 1343
    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    .line 1344
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->m()[C

    move-result-object v4

    .line 1346
    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 1347
    goto/16 :goto_1

    .line 1271
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1289
    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    .line 1290
    and-int/lit8 v4, v2, 0xf

    .line 1291
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1292
    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    .line 1293
    and-int/lit8 v4, v2, 0x7

    .line 1294
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    .line 1296
    :cond_a
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o(I)V

    .line 1297
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    .line 1350
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1352
    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    .line 1353
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 1355
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private final a([IIII)Lorg/codehaus/jackson/sym/Name;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 1233
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1235
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1236
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1237
    if-nez v0, :cond_1

    .line 1238
    invoke-direct {p0, p1, v1, p4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1240
    :cond_1
    return-object v0
.end method

.method private a([IIIII)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 925
    sget-object v5, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t:[I

    .line 928
    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    .line 929
    const/16 v0, 0x22

    if-eq p4, v0, :cond_7

    .line 930
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_2

    .line 935
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    .line 945
    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    .line 947
    if-lt p5, v7, :cond_c

    .line 948
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 949
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 951
    :cond_0
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 955
    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_3

    .line 956
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 957
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 975
    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 979
    :goto_4
    if-ge p5, v7, :cond_5

    .line 980
    add-int/lit8 p5, p5, 0x1

    .line 981
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 990
    :goto_5
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v2, :cond_1

    .line 991
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 995
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_0

    .line 938
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    move-result p4

    goto :goto_1

    .line 960
    :cond_3
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 961
    add-int/lit8 v2, p5, 0x1

    .line 963
    if-lt v2, v7, :cond_b

    .line 964
    array-length v2, v0

    if-lt v4, v2, :cond_4

    .line 965
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 967
    :cond_4
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 971
    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 972
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    .line 983
    :cond_5
    array-length v2, v0

    if-lt p2, v2, :cond_6

    .line 984
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 986
    :cond_6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 988
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    .line 998
    :cond_7
    if-lez p5, :cond_9

    .line 999
    array-length v0, p1

    if-lt p2, v0, :cond_8

    .line 1000
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1002
    :cond_8
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1004
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1005
    if-nez v0, :cond_a

    .line 1006
    invoke-direct {p0, p1, p2, p5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1008
    :cond_a
    return-object v0

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto/16 :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1776
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1777
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 1780
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)I

    move-result v1

    int-to-char v1, v1

    .line 1781
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1782
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1787
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method private final a([CI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1403
    sget-object v4, Lorg/codehaus/jackson/impl/Utf8StreamParser;->s:[I

    .line 1404
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    .line 1411
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1412
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v2, :cond_0

    .line 1413
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 1414
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1416
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 1417
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object p1

    move p2, v1

    .line 1420
    :cond_1
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1421
    :goto_1
    if-ge v0, v6, :cond_3

    .line 1422
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    .line 1423
    aget v3, v4, v0

    if-eqz v3, :cond_2

    .line 1424
    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1432
    const/16 v2, 0x22

    if-eq v0, v2, :cond_7

    .line 1433
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    .line 1462
    const/16 v2, 0x20

    if-ge v0, v2, :cond_6

    .line 1464
    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(ILjava/lang/String;)V

    .line 1471
    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    .line 1472
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object p1

    move v2, v1

    .line 1476
    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    .line 1427
    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    .line 1429
    :cond_3
    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    goto :goto_0

    .line 1438
    :pswitch_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->V()C

    move-result v0

    goto :goto_2

    .line 1441
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j(I)I

    move-result v0

    goto :goto_2

    .line 1444
    :pswitch_2
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 1445
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l(I)I

    move-result v0

    goto :goto_2

    .line 1447
    :cond_4
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k(I)I

    move-result v0

    goto :goto_2

    .line 1451
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m(I)I

    move-result v2

    .line 1453
    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 1454
    array-length v3, p1

    if-lt v0, v3, :cond_5

    .line 1455
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object p1

    move v0, v1

    .line 1458
    :cond_5
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    .line 1460
    goto :goto_2

    .line 1467
    :cond_6
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n(I)V

    goto :goto_2

    .line 1478
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 1479
    return-void

    :cond_8
    move v2, p2

    goto :goto_3

    .line 1433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1741
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_1

    .line 1742
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1743
    const-string v1, " in a value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1746
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1747
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_2
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1750
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 1753
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_4

    .line 1754
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1764
    :cond_3
    :goto_0
    return v4

    .line 1758
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i(I)I

    move-result v0

    int-to-char v0, v0

    .line 1760
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1761
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1762
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([II)[I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2254
    if-nez p0, :cond_0

    .line 2255
    new-array v0, p1, [I

    .line 2261
    :goto_0
    return-object v0

    .line 2258
    :cond_0
    array-length v1, p0

    .line 2259
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 2260
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private aa()V
    .locals 1

    .prologue
    .line 2204
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:I

    .line 2205
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:I

    .line 2206
    return-void
.end method

.method private ab()I
    .locals 3

    .prologue
    .line 2211
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2212
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2214
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2404
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private final b(III)Lorg/codehaus/jackson/sym/Name;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1219
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_0

    .line 1226
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1225
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1226
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0
.end method

.method private b(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2248
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 2249
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 2250
    return-void
.end method

.method private b(Lorg/codehaus/jackson/JsonToken;)V
    .locals 6
    .parameter

    .prologue
    .line 1717
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v1

    .line 1718
    const/4 v0, 0x1

    .line 1720
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    .line 1721
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v3, v4, :cond_0

    .line 1722
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 1724
    :cond_0
    aget-byte v3, v1, v0

    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 1725
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'null\', \'true\' or \'false\'"

    invoke-direct {p0, v3, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_1
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1733
    :cond_2
    return-void
.end method

.method private b(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x22

    const/4 v5, -0x2

    .line 2274
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->F()Lorg/codehaus/jackson/util/ByteArrayBuilder;

    move-result-object v2

    .line 2281
    :cond_0
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_1

    .line 2282
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2284
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    .line 2285
    const/16 v0, 0x20

    if-le v1, v0, :cond_0

    .line 2286
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v0

    .line 2287
    if-gez v0, :cond_3

    .line 2288
    if-ne v1, v6, :cond_2

    .line 2289
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    .line 2357
    :goto_1
    return-object v0

    .line 2291
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2292
    if-ltz v0, :cond_0

    .line 2300
    :cond_3
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v3, :cond_4

    .line 2301
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2303
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v3

    and-int/lit16 v3, v1, 0xff

    .line 2304
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v1

    .line 2305
    if-gez v1, :cond_5

    .line 2306
    const/4 v1, 0x1

    invoke-direct {p0, p1, v3, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v1

    .line 2308
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v1, v0

    .line 2311
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v3, :cond_6

    .line 2312
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2314
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 2315
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v0

    .line 2318
    if-gez v0, :cond_b

    .line 2319
    if-eq v0, v5, :cond_8

    .line 2321
    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2322
    shr-int/lit8 v0, v1, 0x4

    .line 2323
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 2324
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto :goto_1

    .line 2326
    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, p1, v3, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2328
    :cond_8
    if-ne v0, v5, :cond_b

    .line 2330
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v3, :cond_9

    .line 2331
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2333
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 2334
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/Base64Variant;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected padding character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v7, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 2338
    :cond_a
    shr-int/lit8 v0, v1, 0x4

    .line 2339
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    .line 2344
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v0

    .line 2346
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v3, :cond_c

    .line 2347
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2349
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 2350
    invoke-virtual {p1, v3}, Lorg/codehaus/jackson/Base64Variant;->b(I)I

    move-result v0

    .line 2351
    if-gez v0, :cond_f

    .line 2352
    if-eq v0, v5, :cond_e

    .line 2354
    if-ne v3, v6, :cond_d

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2355
    shr-int/lit8 v0, v1, 0x2

    .line 2356
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    .line 2357
    invoke-virtual {v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto/16 :goto_1

    .line 2359
    :cond_d
    invoke-direct {p0, p1, v3, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/Base64Variant;II)I

    move-result v0

    .line 2361
    :cond_e
    if-ne v0, v5, :cond_f

    .line 2368
    shr-int/lit8 v0, v1, 0x2

    .line 2369
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_0

    .line 2374
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    .line 2375
    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto/16 :goto_0
.end method

.method private final c(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .parameter

    .prologue
    .line 394
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 396
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 436
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 436
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 400
    :sswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 401
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 403
    :sswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 404
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 409
    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 411
    :sswitch_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 412
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 414
    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 415
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 417
    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 418
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 434
    :sswitch_6
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 398
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private d(I)Lorg/codehaus/jackson/JsonToken;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x39

    const/16 v2, 0x2d

    const/16 v8, 0x30

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 486
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v1

    .line 488
    if-ne p1, v2, :cond_2

    move v4, v5

    .line 491
    :goto_0
    if-eqz v4, :cond_a

    .line 492
    aput-char v2, v1, v0

    .line 494
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v2, :cond_0

    .line 495
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 499
    if-lt v0, v8, :cond_1

    if-le v0, v9, :cond_3

    .line 500
    :cond_1
    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 540
    :goto_1
    return-object v0

    :cond_2
    move v4, v0

    .line 488
    goto :goto_0

    :cond_3
    move v3, v5

    .line 505
    :goto_2
    if-ne v0, v8, :cond_4

    .line 506
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->K()I

    move-result v0

    .line 510
    :cond_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 514
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 515
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-le v0, v3, :cond_5

    .line 516
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    .line 521
    :cond_5
    :goto_3
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    if-lt v3, v0, :cond_6

    .line 523
    invoke-direct {p0, v1, v2, v4, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 525
    :cond_6
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    .line 526
    if-lt v3, v8, :cond_7

    if-gt v3, v9, :cond_7

    .line 527
    add-int/lit8 v5, v5, 0x1

    .line 530
    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_3

    .line 532
    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_9

    :cond_8
    move-object v0, p0

    .line 533
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 536
    :cond_9
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    .line 537
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 540
    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_a
    move v3, v0

    move v0, p1

    goto :goto_2
.end method

.method private e(I)Lorg/codehaus/jackson/sym/Name;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    .line 715
    if-eq p1, v5, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 719
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-le v0, v1, :cond_1

    .line 720
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->L()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    .line 730
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t:[I

    .line 732
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 734
    aget v3, v1, v2

    if-nez v3, :cond_a

    .line 735
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 736
    aget v4, v1, v3

    if-nez v4, :cond_8

    .line 737
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 738
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 739
    aget v4, v1, v3

    if-nez v4, :cond_6

    .line 740
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 741
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 742
    aget v4, v1, v3

    if-nez v4, :cond_4

    .line 743
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 744
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 745
    aget v3, v1, v0

    if-nez v3, :cond_2

    .line 746
    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->y:I

    .line 747
    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I[I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_2
    if-ne v0, v5, :cond_3

    .line 750
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 752
    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_4
    if-ne v3, v5, :cond_5

    .line 755
    invoke-direct {p0, v2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 759
    :cond_6
    if-ne v3, v5, :cond_7

    .line 760
    invoke-direct {p0, v2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 762
    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 764
    :cond_8
    if-ne v3, v5, :cond_9

    .line 765
    invoke-direct {p0, v2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 767
    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 769
    :cond_a
    if-ne v2, v5, :cond_b

    .line 770
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->c()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    .line 772
    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private f(I)Lorg/codehaus/jackson/sym/Name;
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 819
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser;->t:[I

    move v2, v5

    move v4, p1

    .line 827
    :goto_0
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_0

    .line 828
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 864
    :goto_1
    return-object v0

    .line 832
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 833
    aget v0, v1, v9

    if-eqz v0, :cond_2

    .line 834
    if-ne v9, v8, :cond_1

    .line 835
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 837
    :cond_1
    iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 840
    :cond_2
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 841
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 842
    aget v0, v1, v4

    if-eqz v0, :cond_4

    .line 843
    if-ne v4, v8, :cond_3

    .line 844
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 846
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 849
    :cond_4
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 850
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 851
    aget v0, v1, v4

    if-eqz v0, :cond_6

    .line 852
    if-ne v4, v8, :cond_5

    .line 853
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 855
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1

    .line 858
    :cond_6
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 859
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 860
    aget v0, v1, v4

    if-eqz v0, :cond_8

    .line 861
    if-ne v4, v8, :cond_7

    .line 862
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 864
    :cond_7
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1

    .line 868
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 869
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 871
    :cond_9
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 873
    goto/16 :goto_0
.end method

.method private g(I)Lorg/codehaus/jackson/sym/Name;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1021
    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->M()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 1082
    :goto_0
    return-object v0

    .line 1025
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1032
    :cond_1
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->d()[I

    move-result-object v6

    .line 1034
    aget v1, v6, p1

    if-eqz v1, :cond_2

    .line 1035
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1042
    :cond_2
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1049
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_4

    .line 1050
    add-int/lit8 v1, v1, 0x1

    .line 1051
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    .line 1060
    :goto_2
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v4, v5, :cond_3

    .line 1061
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1062
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(Ljava/lang/String;)V

    .line 1065
    :cond_3
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    .line 1066
    aget v4, v6, p1

    if-nez v4, :cond_6

    .line 1067
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    .line 1053
    :cond_4
    array-length v1, v0

    if-lt v3, v1, :cond_5

    .line 1054
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1056
    :cond_5
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    .line 1058
    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    .line 1072
    :cond_6
    if-lez v0, :cond_8

    .line 1073
    array-length v4, v3

    if-lt v2, v4, :cond_7

    .line 1074
    array-length v4, v3

    invoke-static {v3, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->w:[I

    .line 1076
    :cond_7
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1078
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, v3, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->a([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 1079
    if-nez v1, :cond_9

    .line 1080
    invoke-direct {p0, v3, v2, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private h(I)Lorg/codehaus/jackson/JsonToken;
    .locals 3
    .parameter

    .prologue
    .line 1557
    sparse-switch p1, :sswitch_data_0

    .line 1581
    :cond_0
    :goto_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 1582
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1559
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->P()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1564
    :sswitch_1
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;I)Z

    .line 1565
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1568
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const-string v1, "expected \'NaN\' or a valid value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 1573
    :sswitch_2
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_2

    .line 1574
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1575
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->H()V

    .line 1578
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1557
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method private i(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 1980
    .line 1981
    if-gez p1, :cond_3

    .line 1985
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    .line 1986
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2000
    :goto_0
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()I

    move-result v3

    .line 2001
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_0

    .line 2002
    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 2004
    :cond_0
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2006
    if-le v0, v1, :cond_3

    .line 2007
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()I

    move-result v1

    .line 2008
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    .line 2009
    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 2011
    :cond_1
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2012
    if-le v0, v2, :cond_3

    .line 2013
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->ab()I

    move-result v0

    .line 2014
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_2

    .line 2015
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p(I)V

    .line 2017
    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2021
    :cond_3
    return p1

    .line 1988
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_5

    .line 1989
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 1990
    goto :goto_0

    .line 1991
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_6

    .line 1993
    and-int/lit8 p1, p1, 0x7

    .line 1994
    const/4 v0, 0x3

    goto :goto_0

    .line 1996
    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o(I)V

    move v0, v1

    .line 1997
    goto :goto_0
.end method

.method private final j(I)I
    .locals 3
    .parameter

    .prologue
    .line 2033
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2034
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2036
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2037
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    .line 2038
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2040
    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final k(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2046
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2047
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2049
    :cond_0
    and-int/lit8 v0, p1, 0xf

    .line 2050
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2051
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2052
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2054
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2055
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_2

    .line 2056
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2058
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2059
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2060
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2062
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2063
    return v0
.end method

.method private final l(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2069
    and-int/lit8 v0, p1, 0xf

    .line 2070
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2071
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    .line 2072
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2074
    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2075
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2076
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    .line 2077
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2079
    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2080
    return v0
.end method

.method private final m(I)I
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2090
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v0, v1, :cond_0

    .line 2091
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2093
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v0, v0, v1

    .line 2094
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    .line 2095
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2097
    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2099
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_2

    .line 2100
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2102
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2103
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    .line 2104
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2106
    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2107
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e:I

    if-lt v1, v2, :cond_4

    .line 2108
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->A()V

    .line 2110
    :cond_4
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->r:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    aget-byte v1, v1, v2

    .line 2111
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    .line 2112
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(II)V

    .line 2118
    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private n(I)V
    .locals 1
    .parameter

    .prologue
    .line 2227
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 2228
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(I)V

    .line 2230
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o(I)V

    .line 2231
    return-void
.end method

.method private o(I)V
    .locals 2
    .parameter

    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 2237
    return-void
.end method

.method private p(I)V
    .locals 2
    .parameter

    .prologue
    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 2243
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x7d

    const/16 v6, 0x5d

    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 268
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->J()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->O()V

    .line 274
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->R()I

    move-result v0

    .line 275
    if-gez v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 280
    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v1

    goto :goto_0

    .line 286
    :cond_2
    iget-wide v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->f:J

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->i:J

    .line 287
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->g:I

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->j:I

    .line 288
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->k:I

    .line 291
    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q:[B

    .line 294
    if-ne v0, v6, :cond_4

    .line 295
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 296
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IC)V

    .line 298
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 299
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 301
    :cond_4
    if-ne v0, v7, :cond_6

    .line 302
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 303
    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(IC)V

    .line 305
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 306
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 310
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 311
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 314
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q()I

    move-result v0

    .line 321
    :cond_8
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->c()Z

    move-result v1

    if-nez v1, :cond_9

    .line 322
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 325
    :cond_9
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->e(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/Name;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 328
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q()I

    move-result v0

    .line 329
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a

    .line 330
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 332
    :cond_a
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->Q()I

    move-result v0

    .line 335
    const/16 v1, 0x22

    if-ne v0, v1, :cond_b

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 337
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 342
    :cond_b
    sparse-switch v0, :sswitch_data_0

    .line 385
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->h(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 387
    :goto_1
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->m:Lorg/codehaus/jackson/JsonToken;

    .line 388
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_0

    .line 344
    :sswitch_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 347
    :sswitch_1
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 353
    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(ILjava/lang/String;)V

    .line 355
    :sswitch_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 356
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 359
    :sswitch_4
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 360
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 363
    :sswitch_5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/JsonToken;)V

    .line 364
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 382
    :sswitch_6
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q:[B

    if-nez v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->d(Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v0, :cond_2

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 246
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->q:[B

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->u:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;->close()V

    .line 458
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->v:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->b()V

    .line 459
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 110
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 111
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()V

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->e()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->a(Lorg/codehaus/jackson/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_4

    .line 143
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p:Z

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 149
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    if-nez v2, :cond_2

    .line 150
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->c:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->a(I)[C

    move-result-object v2

    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    .line 154
    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->p:Z

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    array-length v2, v2

    if-ge v2, v1, :cond_0

    .line 152
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->o:[C

    goto :goto_1

    .line 160
    :pswitch_1
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v0, :cond_3

    .line 161
    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 162
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()V

    .line 167
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->d()[C

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final m()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 184
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->l:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 186
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v1, :cond_1

    .line 187
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 188
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()V

    .line 193
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->b()I

    move-result v0

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final n()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Lorg/codehaus/jackson/impl/Utf8StreamParser$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 211
    :pswitch_1
    iget-boolean v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    if-eqz v1, :cond_1

    .line 212
    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->x:Z

    .line 213
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->N()V

    .line 218
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->c()I

    move-result v0

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
