.class public final Lorg/codehaus/jackson/node/IntNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.source "IntNode.java"


# static fields
.field private static final a:[Lorg/codehaus/jackson/node/IntNode;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 24
    new-array v0, v4, [Lorg/codehaus/jackson/node/IntNode;

    sput-object v0, Lorg/codehaus/jackson/node/IntNode;->a:[Lorg/codehaus/jackson/node/IntNode;

    .line 26
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 27
    sget-object v1, Lorg/codehaus/jackson/node/IntNode;->a:[Lorg/codehaus/jackson/node/IntNode;

    new-instance v2, Lorg/codehaus/jackson/node/IntNode;

    add-int/lit8 v3, v0, -0x1

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V

    iput p1, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    return-void
.end method

.method public static b(I)Lorg/codehaus/jackson/node/IntNode;
    .locals 2
    .parameter

    .prologue
    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/IntNode;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/codehaus/jackson/node/IntNode;->a:[Lorg/codehaus/jackson/node/IntNode;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(I)V

    .line 107
    return-void
.end method

.method public final a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    if-eqz v0, :cond_0

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
    .line 94
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/node/IntNode;

    iget v2, p1, Lorg/codehaus/jackson/node/IntNode;->b:I

    iget v3, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    return v0
.end method

.method public final m()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    return-object v0
.end method

.method public final q()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    return v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final t()D
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
