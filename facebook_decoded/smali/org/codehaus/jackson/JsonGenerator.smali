.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/codehaus/jackson/Versioned;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lorg/codehaus/jackson/JsonGenerator;
    .locals 0
    .parameter

    .prologue
    .line 395
    return-object p0
.end method

.method public abstract a()V
.end method

.method public abstract a(C)V
.end method

.method public abstract a(D)V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public abstract a(Ljava/math/BigDecimal;)V
.end method

.method public abstract a(Ljava/math/BigInteger;)V
.end method

.method public abstract a(Lorg/codehaus/jackson/Base64Variant;[BII)V
.end method

.method public abstract a(Lorg/codehaus/jackson/JsonParser;)V
.end method

.method public a(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public a(Lorg/codehaus/jackson/io/SerializedString;)V
    .locals 1
    .parameter

    .prologue
    .line 515
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/SerializedString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public final a([B)V
    .locals 3
    .parameter

    .prologue
    .line 751
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->a()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/codehaus/jackson/JsonGenerator;->a(Lorg/codehaus/jackson/Base64Variant;[BII)V

    .line 752
    return-void
.end method

.method public abstract a([CII)V
.end method

.method public abstract b()V
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public b(Lorg/codehaus/jackson/SerializableString;)V
    .locals 1
    .parameter

    .prologue
    .line 578
    invoke-interface {p1}, Lorg/codehaus/jackson/SerializableString;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract close()V
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()V
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1052
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 1054
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 1074
    return-void
.end method
