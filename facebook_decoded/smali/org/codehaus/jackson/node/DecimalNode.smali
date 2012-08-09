.class public final Lorg/codehaus/jackson/node/DecimalNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "DecimalNode.java"


# instance fields
.field private a:Ljava/math/BigDecimal;


# direct methods
.method private constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-void
.end method

.method public static a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/DecimalNode;
    .locals 1
    .parameter

    .prologue
    .line 27
    new-instance v0, Lorg/codehaus/jackson/node/DecimalNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/DecimalNode;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigDecimal;)V

    .line 81
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 91
    check-cast p1, Lorg/codehaus/jackson/node/DecimalNode;

    iget-object v0, p1, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public final m()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public final q()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/node/DecimalNode;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
