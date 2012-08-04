.class public final Lorg/codehaus/jackson/node/NodeCursor$RootValue;
.super Lorg/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# instance fields
.field private c:Lorg/codehaus/jackson/JsonNode;

.field private d:Z


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 98
    iget-boolean v1, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->d:Z

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->d:Z

    .line 100
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$RootValue;->c:Lorg/codehaus/jackson/JsonNode;

    goto :goto_0
.end method

.method public final i()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method
