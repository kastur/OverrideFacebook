.class public Lcom/facebook/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lcom/facebook/apache/commons/codec/StringEncoder;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/apache/commons/codec/language/Metaphone;->a:I

    .line 70
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/facebook/apache/commons/codec/language/Metaphone;->a:I

    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x4b

    const/16 v10, 0x53

    const/16 v9, 0x48

    const/4 v3, 0x1

    .line 83
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-string v0, ""

    .line 314
    :goto_0
    return-object v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 89
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    aget-char v2, v0, v1

    sparse-switch v2, :sswitch_data_0

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 134
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move v0, v1

    .line 137
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a()I

    move-result v7

    if-ge v2, v7, :cond_1f

    if-ge v0, v6, :cond_1f

    .line 139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 141
    const/16 v7, 0x43

    if-eq v2, v7, :cond_4

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_5

    .line 142
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 308
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a()I

    move-result v7

    if-le v2, v7, :cond_3

    .line 311
    invoke-direct {p0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 101
    :sswitch_0
    aget-char v2, v0, v3

    const/16 v6, 0x4e

    if-ne v2, v6, :cond_6

    .line 102
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 108
    :sswitch_1
    aget-char v2, v0, v3

    const/16 v6, 0x45

    if-ne v2, v6, :cond_7

    .line 109
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :sswitch_2
    aget-char v2, v0, v3

    const/16 v6, 0x52

    if-ne v2, v6, :cond_8

    .line 116
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_8
    aget-char v2, v0, v3

    if-ne v2, v9, :cond_9

    .line 120
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    const/16 v0, 0x57

    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :sswitch_3
    aput-char v10, v0, v1

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 146
    :pswitch_0
    if-nez v0, :cond_5

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 151
    :pswitch_1
    const/16 v7, 0x4d

    invoke-static {v4, v0, v7}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 153
    :cond_a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 159
    :pswitch_2
    invoke-static {v4, v0, v10}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_5

    .line 162
    :cond_b
    const-string v2, "CIA"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 165
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 168
    :cond_c
    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_d

    .line 170
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 173
    :cond_d
    invoke-static {v4, v0, v10}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v4, v0, v9}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 175
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 178
    :cond_e
    invoke-static {v4, v0, v9}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 179
    if-nez v0, :cond_f

    const/4 v2, 0x3

    if-lt v6, v2, :cond_f

    const/4 v2, 0x2

    invoke-static {v4, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 182
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 184
    :cond_f
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 187
    :cond_10
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 191
    :pswitch_3
    add-int/lit8 v2, v0, 0x1

    invoke-static {v6, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x47

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "EIY"

    add-int/lit8 v7, v0, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_11

    .line 194
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_3

    .line 196
    :cond_11
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 200
    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {v6, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v4, v0, v9}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-nez v2, :cond_5

    .line 202
    :cond_12
    add-int/lit8 v2, v0, 0x1

    invoke-static {v6, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v4, v0, v9}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, v0, 0x2

    invoke-static {v4, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    :cond_13
    if-lez v0, :cond_14

    const-string v2, "GN"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "GNED"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 212
    :cond_14
    const/16 v2, 0x47

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    .line 220
    :goto_4
    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "EIY"

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_16

    if-nez v2, :cond_16

    .line 223
    const/16 v2, 0x4a

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_15
    move v2, v1

    .line 218
    goto :goto_4

    .line 225
    :cond_16
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 229
    :pswitch_5
    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 230
    if-lez v0, :cond_17

    const-string v2, "CSPTG"

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_5

    .line 234
    :cond_17
    add-int/lit8 v2, v0, 0x1

    invoke-static {v4, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 246
    :pswitch_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 249
    :pswitch_7
    if-lez v0, :cond_18

    .line 250
    const/16 v7, 0x43

    invoke-static {v4, v0, v7}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-nez v7, :cond_5

    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 254
    :cond_18
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 258
    :pswitch_8
    invoke-static {v4, v0, v9}, Lcom/facebook/apache/commons/codec/language/Metaphone;->b(Ljava/lang/StringBuffer;IC)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 260
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 262
    :cond_19
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 266
    :pswitch_9
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 269
    :pswitch_a
    const-string v2, "SH"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "SIO"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "SIA"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 272
    :cond_1a
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 274
    :cond_1b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 278
    :pswitch_b
    const-string v2, "TIA"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "TIO"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 280
    :cond_1c
    const/16 v2, 0x58

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 283
    :cond_1d
    const-string v2, "TCH"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 285
    const-string v2, "TH"

    invoke-static {v4, v0, v2}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 289
    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 291
    :cond_1e
    const/16 v2, 0x54

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 295
    :pswitch_c
    const/16 v2, 0x46

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 297
    :pswitch_d
    invoke-static {v6, v0}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(II)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v7, v0, 0x1

    invoke-static {v4, v7}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/StringBuffer;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 299
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 303
    :pswitch_e
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 306
    :pswitch_f
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 314
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 142
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private static a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    const-string v0, "AEIOU"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 322
    .line 323
    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 325
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 327
    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    if-ltz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 343
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    :cond_0
    return v0
.end method

.method private static b(Ljava/lang/StringBuffer;IC)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    .line 332
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 334
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 336
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 367
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/facebook/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lcom/facebook/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/apache/commons/codec/language/Metaphone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
