.class public abstract Lorg/codehaus/jackson/node/ValueNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "ValueNode.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/node/ValueNode;->a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 35
    invoke-virtual {p3, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 36
    return-void
.end method

.method public final c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->B()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ValueNode;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
