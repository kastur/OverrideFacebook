.class public final Lorg/codehaus/jackson/node/BigIntegerNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "BigIntegerNode.java"


# instance fields
.field private a:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;
    .locals 1
    .parameter

    .prologue
    .line 26
    new-instance v0, Lorg/codehaus/jackson/node/BigIntegerNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/math/BigInteger;)V

    .line 87
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/node/BigIntegerNode;

    iget-object v2, p1, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public final m()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public final q()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()D
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->a:Ljava/math/BigInteger;

    return-object v0
.end method
