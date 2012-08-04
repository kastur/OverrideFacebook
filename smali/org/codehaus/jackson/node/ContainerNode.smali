.class public abstract Lorg/codehaus/jackson/node/ContainerNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "ContainerNode.java"


# instance fields
.field private a:Lorg/codehaus/jackson/node/JsonNodeFactory;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    .line 28
    return-void
.end method


# virtual methods
.method public final B()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    return-object v0
.end method

.method public final a(D)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(F)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1, p2}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Z)Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lorg/codehaus/jackson/node/NumericNode;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/node/ContainerNode;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-static {p1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public abstract x()I
.end method
