.class public Lorg/codehaus/jackson/schema/JsonSchema;
.super Ljava/lang/Object;
.source "JsonSchema.java"


# instance fields
.field private final a:Lorg/codehaus/jackson/node/ObjectNode;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    instance-of v2, p1, Lorg/codehaus/jackson/schema/JsonSchema;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 61
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/schema/JsonSchema;

    .line 62
    iget-object v2, p0, Lorg/codehaus/jackson/schema/JsonSchema;->a:Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v2, :cond_4

    .line 63
    iget-object v2, p1, Lorg/codehaus/jackson/schema/JsonSchema;->a:Lorg/codehaus/jackson/node/ObjectNode;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->a:Lorg/codehaus/jackson/node/ObjectNode;

    iget-object v1, p1, Lorg/codehaus/jackson/schema/JsonSchema;->a:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/codehaus/jackson/schema/JsonSchema;->a:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
