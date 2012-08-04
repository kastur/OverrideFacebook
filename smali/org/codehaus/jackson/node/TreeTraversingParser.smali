.class public Lorg/codehaus/jackson/node/TreeTraversingParser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TreeTraversingParser.java"


# instance fields
.field private c:Lorg/codehaus/jackson/node/NodeCursor;

.field private d:Z

.field private e:Z


# direct methods
.method private A()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->j()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0
.end method

.method private B()Lorg/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 365
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 368
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 367
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected final E()V
    .locals 0

    .prologue
    .line 375
    invoke-static {}, Lorg/codehaus/jackson/node/TreeTraversingParser;->I()V

    .line 376
    return-void
.end method

.method public final a()Lorg/codehaus/jackson/JsonToken;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    if-eqz v0, :cond_4

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    .line 127
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 130
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 155
    :goto_1
    return-object v0

    .line 128
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->l()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->h()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 134
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 135
    :cond_2
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    .line 137
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 140
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_5

    .line 141
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    .line 142
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->h()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_8

    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 148
    :cond_6
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    .line 150
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 153
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->i()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->f()Lorg/codehaus/jackson/node/NodeCursor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_1
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 2
    .parameter

    .prologue
    .line 330
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->o()[B

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 346
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Lorg/codehaus/jackson/node/POJONode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/POJONode;->B()Ljava/lang/Object;

    move-result-object v0

    .line 340
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 341
    check-cast v0, [B

    goto :goto_0

    .line 346
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    .line 104
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    .line 105
    iput-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 107
    :cond_0
    return-void
.end method

.method public final d()Lorg/codehaus/jackson/JsonParser;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 165
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    .line 166
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 168
    iput-boolean v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->d:Z

    .line 169
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public final i()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-boolean v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    if-eqz v1, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/node/TreeTraversingParser$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->c:Lorg/codehaus/jackson/node/NodeCursor;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/NodeCursor;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->q()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final l()[C
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->q()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->m()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->r()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->v()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final w()F
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->t()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final x()D
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->t()D

    move-result-wide v0

    return-wide v0
.end method

.method public final y()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->B()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->u()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/codehaus/jackson/node/TreeTraversingParser;->e:Z

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lorg/codehaus/jackson/node/TreeTraversingParser;->A()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Lorg/codehaus/jackson/node/POJONode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/POJONode;->B()Ljava/lang/Object;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
