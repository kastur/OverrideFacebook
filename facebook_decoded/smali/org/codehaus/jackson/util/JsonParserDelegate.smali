.class public Lorg/codehaus/jackson/util/JsonParserDelegate;
.super Lorg/codehaus/jackson/JsonParser;
.source "JsonParserDelegate.java"


# instance fields
.field protected c:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonParser;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonParser;->a(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 91
    return-void
.end method

.method public final d()Lorg/codehaus/jackson/JsonParser;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 241
    return-object p0
.end method

.method public final e()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->f()V

    .line 117
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->i()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()[C
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->l()[C

    move-result-object v0

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->m()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->n()I

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->p()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    return-object v0
.end method

.method public final r()B
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->r()B

    move-result v0

    return v0
.end method

.method public final s()S
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->s()S

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->v()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final w()F
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->w()F

    move-result v0

    return v0
.end method

.method public final x()D
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->x()D

    move-result-wide v0

    return-wide v0
.end method

.method public final y()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserDelegate;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->y()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
