.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.source "ReaderBasedNumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 29
    return-void
.end method

.method private final J()C
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 303
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v0, v0, v2

    .line 308
    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 312
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(Ljava/lang/String;)V

    .line 315
    :cond_4
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 316
    if-ne v0, v1, :cond_0

    .line 317
    :cond_5
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v0, v0, v2

    .line 319
    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    .line 320
    goto :goto_0

    .line 322
    :cond_8
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 323
    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final a(Z)Lorg/codehaus/jackson/JsonToken;
    .locals 14
    .parameter

    .prologue
    const/16 v10, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->j()[C

    move-result-object v4

    .line 182
    if-eqz p1, :cond_18

    .line 183
    aput-char v10, v4, v2

    move v0, v1

    .line 188
    :goto_0
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-ge v3, v5, :cond_a

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v3, v3, v5

    .line 189
    :goto_1
    if-ne v3, v11, :cond_0

    .line 190
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->J()C

    move-result v3

    :cond_0
    move v5, v2

    move v13, v3

    move-object v3, v4

    move v4, v13

    .line 196
    :goto_2
    if-lt v4, v11, :cond_17

    if-gt v4, v12, :cond_17

    .line 197
    add-int/lit8 v5, v5, 0x1

    .line 198
    array-length v6, v3

    if-lt v0, v6, :cond_1

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 202
    :cond_1
    add-int/lit8 v6, v0, 0x1

    aput-char v4, v3, v0

    .line 203
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v0, v4, :cond_b

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v0

    if-nez v0, :cond_b

    move v7, v1

    move v0, v2

    move v9, v5

    move-object v4, v3

    move v5, v6

    .line 212
    :goto_3
    if-nez v9, :cond_2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Missing integer part (next char "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->b(Ljava/lang/String;)V

    .line 218
    :cond_2
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_16

    .line 219
    add-int/lit8 v3, v5, 0x1

    aput-char v0, v4, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v2

    .line 223
    :goto_4
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v6, v8, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v1

    .line 239
    :goto_5
    if-nez v0, :cond_3

    .line 240
    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v3, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ILjava/lang/String;)V

    :cond_3
    move v8, v0

    move v0, v4

    move v13, v3

    move-object v3, v5

    move v5, v13

    .line 245
    :goto_6
    const/16 v4, 0x65

    if-eq v5, v4, :cond_4

    const/16 v4, 0x45

    if-ne v5, v4, :cond_13

    .line 246
    :cond_4
    array-length v4, v3

    if-lt v0, v4, :cond_5

    .line 247
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 250
    :cond_5
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    .line 252
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-ge v0, v5, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v5, v0, v5

    .line 255
    :goto_7
    if-eq v5, v10, :cond_6

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_12

    .line 256
    :cond_6
    array-length v0, v3

    if-lt v4, v0, :cond_11

    .line 257
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v3

    move v0, v2

    .line 260
    :goto_8
    add-int/lit8 v4, v0, 0x1

    aput-char v5, v3, v0

    .line 262
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-ge v0, v5, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v0, v0, v5

    move-object v5, v3

    move v3, v2

    :goto_9
    move v7, v0

    move v0, v4

    .line 267
    :goto_a
    if-gt v7, v12, :cond_10

    if-lt v7, v11, :cond_10

    .line 268
    add-int/lit8 v3, v3, 0x1

    .line 269
    array-length v4, v5

    if-lt v0, v4, :cond_7

    .line 270
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v5

    move v0, v2

    .line 273
    :cond_7
    add-int/lit8 v4, v0, 0x1

    aput-char v7, v5, v0

    .line 274
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v0, v10, :cond_f

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v0

    if-nez v0, :cond_f

    move v2, v3

    move v0, v1

    move v1, v4

    .line 281
    :goto_b
    if-nez v2, :cond_8

    .line 282
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ILjava/lang/String;)V

    .line 287
    :cond_8
    :goto_c
    if-nez v0, :cond_9

    .line 288
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 290
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->a(I)V

    .line 292
    invoke-virtual {p0, p1, v9, v8, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 188
    :cond_a
    const-string v3, "No digit following minus sign"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e(Ljava/lang/String;)C

    move-result v3

    goto/16 :goto_1

    .line 209
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v4, v0, v4

    move v0, v6

    goto/16 :goto_2

    .line 227
    :cond_c
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v3, v3, v6

    .line 228
    if-lt v3, v11, :cond_15

    if-gt v3, v12, :cond_15

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 232
    array-length v6, v5

    if-lt v4, v6, :cond_14

    .line 233
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->l()[C

    move-result-object v5

    move v6, v2

    .line 236
    :goto_d
    add-int/lit8 v4, v6, 0x1

    aput-char v3, v5, v6

    goto/16 :goto_4

    .line 252
    :cond_d
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e(Ljava/lang/String;)C

    move-result v5

    goto/16 :goto_7

    .line 262
    :cond_e
    const-string v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e(Ljava/lang/String;)C

    move-result v0

    move-object v5, v3

    move v3, v2

    goto/16 :goto_9

    .line 278
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v10, v7, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char v0, v0, v7

    goto/16 :goto_9

    :cond_10
    move v2, v3

    move v1, v0

    move v0, v6

    goto :goto_b

    :cond_11
    move v0, v4

    goto/16 :goto_8

    :cond_12
    move v7, v5

    move v0, v4

    move-object v5, v3

    move v3, v2

    goto/16 :goto_a

    :cond_13
    move v1, v0

    move v0, v6

    goto :goto_c

    :cond_14
    move v6, v4

    goto :goto_d

    :cond_15
    move v6, v7

    goto/16 :goto_5

    :cond_16
    move v8, v2

    move v6, v7

    move-object v3, v4

    move v13, v5

    move v5, v0

    move v0, v13

    goto/16 :goto_6

    :cond_17
    move v7, v2

    move v9, v5

    move v5, v0

    move v0, v4

    move-object v4, v3

    goto/16 :goto_3

    :cond_18
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(IZ)Lorg/codehaus/jackson/JsonToken;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 338
    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    .line 339
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-lt v0, v5, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->H()V

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    aget-char p1, v0, v5

    .line 345
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 346
    if-eqz p2, :cond_1

    const-string v0, "-INF"

    .line 347
    :goto_0
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;I)Z

    .line 348
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 364
    :goto_2
    return-object v0

    .line 346
    :cond_1
    const-string v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 349
    goto :goto_1

    .line 351
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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d(Ljava/lang/String;)V

    .line 363
    :cond_4
    :goto_3
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ILjava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    goto :goto_2

    .line 353
    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    .line 354
    if-eqz p2, :cond_6

    const-string v0, "-Infinity"

    .line 355
    :goto_4
    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;I)Z

    .line 356
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 357
    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 354
    :cond_6
    const-string v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v1, v3

    .line 357
    goto :goto_5

    .line 359
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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected final c(I)Lorg/codehaus/jackson/JsonToken;
    .locals 13
    .parameter

    .prologue
    const/16 v11, 0x2d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v10, 0x39

    const/16 v9, 0x30

    .line 60
    if-ne p1, v11, :cond_1

    move v0, v1

    .line 61
    :goto_0
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 62
    add-int/lit8 v5, v4, -0x1

    .line 63
    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    .line 67
    if-eqz v0, :cond_2

    .line 68
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-ge v4, v3, :cond_b

    .line 69
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v3, v4, 0x1

    aget-char p1, v6, v4

    .line 73
    if-gt p1, v10, :cond_0

    if-ge p1, v9, :cond_3

    .line 74
    :cond_0
    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 75
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 165
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 60
    goto :goto_0

    :cond_2
    move v3, v4

    .line 83
    :cond_3
    if-eq p1, v9, :cond_b

    .line 99
    :goto_2
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->e:I

    if-ge v3, v4, :cond_b

    .line 100
    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v6, v3

    .line 103
    if-lt v3, v9, :cond_4

    if-gt v3, v10, :cond_4

    .line 104
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2

    .line 112
    :cond_4
    const/16 v6, 0x2e

    if-ne v3, v6, :cond_e

    move v3, v2

    move v6, v4

    .line 115
    :goto_3
    if-ge v6, v7, :cond_b

    .line 116
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v6, v8, v6

    .line 119
    if-lt v6, v9, :cond_5

    if-gt v6, v10, :cond_5

    .line 120
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_3

    .line 125
    :cond_5
    if-nez v3, :cond_6

    .line 126
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v6, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ILjava/lang/String;)V

    :cond_6
    move v12, v3

    move v3, v4

    move v4, v6

    move v6, v12

    .line 131
    :goto_4
    const/16 v8, 0x65

    if-eq v4, v8, :cond_7

    const/16 v8, 0x45

    if-ne v4, v8, :cond_a

    .line 132
    :cond_7
    if-ge v3, v7, :cond_b

    .line 133
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    .line 137
    if-eq v3, v11, :cond_8

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_d

    .line 138
    :cond_8
    if-ge v4, v7, :cond_b

    .line 139
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v8, v4

    .line 143
    :goto_5
    if-gt v4, v10, :cond_9

    if-lt v4, v9, :cond_9

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    if-ge v3, v7, :cond_b

    .line 146
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v3, v8, v3

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_5

    .line 151
    :cond_9
    if-nez v2, :cond_a

    .line 152
    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ILjava/lang/String;)V

    .line 157
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 158
    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 159
    sub-int/2addr v3, v5

    .line 160
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->n:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->r:[C

    invoke-virtual {v4, v7, v5, v3}, Lorg/codehaus/jackson/util/TextBuffer;->a([CII)V

    .line 161
    invoke-virtual {p0, v0, v1, v6, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_b
    if-eqz v0, :cond_c

    add-int/lit8 v1, v5, 0x1

    :goto_6
    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->d:I

    .line 165
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->a(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    move v1, v5

    .line 164
    goto :goto_6

    :cond_d
    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_5

    :cond_e
    move v6, v2

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_4
.end method
