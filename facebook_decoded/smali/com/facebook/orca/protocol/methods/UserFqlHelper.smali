.class public Lcom/facebook/orca/protocol/methods/UserFqlHelper;
.super Ljava/lang/Object;
.source "UserFqlHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    move v1, v2

    .line 87
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 89
    new-instance v5, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v5, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 90
    const-string v0, "uid"

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->z()Ljava/util/Iterator;

    move-result-object v6

    .line 93
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_1

    .line 97
    :cond_0
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 100
    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 101
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 102
    const-string v0, "uid"

    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 103
    if-nez v0, :cond_7

    .line 104
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v3, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 105
    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 107
    :goto_3
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->z()Ljava/util/Iterator;

    move-result-object v6

    .line 108
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_4

    .line 100
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 114
    :cond_3
    if-eqz p2, :cond_5

    .line 115
    :goto_5
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 116
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 117
    const-string v0, "uid2"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 118
    if-eqz v0, :cond_4

    const-string v3, "communication_rank"

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    const-string v3, "rank"

    const-string v5, "communication_rank"

    invoke-virtual {v1, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 115
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 124
    :cond_5
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 125
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/node/ObjectNode;

    .line 126
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_6

    .line 128
    :cond_6
    return-object v1

    :cond_7
    move-object v3, v0

    goto :goto_3
.end method

.method public static varargs a([Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 24
    array-length v0, p0

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 28
    aget-object v0, p0, v2

    goto :goto_0

    .line 33
    :cond_2
    array-length v5, p0

    move v4, v2

    move-object v1, v3

    :goto_1
    if-ge v4, v5, :cond_7

    aget-object v0, p0, v4

    .line 34
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v6

    if-lez v6, :cond_6

    .line 35
    if-nez v1, :cond_3

    .line 36
    check-cast v0, Lorg/codehaus/jackson/node/ArrayNode;

    .line 33
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 45
    :goto_3
    if-nez v0, :cond_0

    .line 51
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 52
    array-length v4, p0

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_5

    aget-object v5, p0, v3

    move v0, v2

    .line 53
    :goto_5
    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 54
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 52
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    .line 57
    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/facebook/orca/protocol/methods/UserFqlHelper;->a(Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    return-object v0
.end method
