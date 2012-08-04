.class public final Lorg/codehaus/jackson/node/NodeCursor$Array;
.super Lorg/codehaus/jackson/node/NodeCursor;
.source "NodeCursor.java"


# instance fields
.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/node/NodeCursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/node/NodeCursor;-><init>(ILorg/codehaus/jackson/node/NodeCursor;)V

    .line 128
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->y()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->c:Ljava/util/Iterator;

    .line 129
    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/JsonToken;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->d:Lorg/codehaus/jackson/JsonNode;

    .line 142
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    iput-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->d:Lorg/codehaus/jackson/JsonNode;

    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->d:Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->c()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final j()Lorg/codehaus/jackson/JsonNode;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/node/NodeCursor$Array;->d:Lorg/codehaus/jackson/JsonNode;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/NodeCursor$Array;->j()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/node/ContainerNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ContainerNode;->x()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
