.class public Lorg/codehaus/jackson/node/JsonNodeFactory;
.super Ljava/lang/Object;
.source "JsonNodeFactory.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1
    .parameter

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/BooleanNode;->B()Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/codehaus/jackson/node/BooleanNode;->C()Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/codehaus/jackson/node/NullNode;->B()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(D)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p0, p1}, Lorg/codehaus/jackson/node/DoubleNode;->a(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(F)Lorg/codehaus/jackson/node/NumericNode;
    .locals 2
    .parameter

    .prologue
    .line 84
    float-to-double v0, p0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/node/DoubleNode;->a(D)Lorg/codehaus/jackson/node/DoubleNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lorg/codehaus/jackson/node/IntNode;->b(I)Lorg/codehaus/jackson/node/IntNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-static {p0, p1}, Lorg/codehaus/jackson/node/LongNode;->a(J)Lorg/codehaus/jackson/node/LongNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lorg/codehaus/jackson/node/DecimalNode;->a(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/DecimalNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-static {p0}, Lorg/codehaus/jackson/node/BigIntegerNode;->a(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {p0}, Lorg/codehaus/jackson/node/TextNode;->d(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/codehaus/jackson/node/ArrayNode;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-object v0
.end method
