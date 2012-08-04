.class public Lcom/facebook/orca/database/DbSharesSerialization;
.super Ljava/lang/Object;
.source "DbSharesSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;
    .locals 2
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/facebook/orca/share/ShareBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareBuilder;-><init>()V

    .line 113
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/lang/String;)V

    .line 114
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/lang/String;)V

    .line 115
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->c(Ljava/lang/String;)V

    .line 116
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/database/DbSharesSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/util/List;)V

    .line 117
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->d(Ljava/lang/String;)V

    .line 118
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/database/DbSharesSerialization;->f(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/util/List;)V

    .line 119
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareBuilder;->g()Lcom/facebook/orca/share/Share;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareProperty;

    .line 85
    invoke-static {v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareProperty;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method private static a(Lcom/facebook/orca/share/ShareMediaPhoto;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .parameter

    .prologue
    .line 61
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 62
    const-string v1, "aid"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "pid"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "fbid"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "owner"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->e()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->f()I

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 68
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaPhoto;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 70
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/facebook/orca/share/ShareMediaVideo;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .parameter

    .prologue
    .line 74
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 75
    const-string v1, "display_url"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaVideo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "source_url"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaVideo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "source_type"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaVideo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "owner"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareMediaVideo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method private static a(Lcom/facebook/orca/share/ShareProperty;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .parameter

    .prologue
    .line 91
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 92
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareProperty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareProperty;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "href"

    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 125
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareMedia;

    .line 45
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 46
    const-string v4, "type"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "src"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "href"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v4, "alt"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->e()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 51
    const-string v4, "photo"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->e()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareMediaPhoto;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 55
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "video"

    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMedia;->f()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lcom/facebook/orca/share/ShareMediaVideo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    goto :goto_1

    .line 57
    :cond_2
    return-object v1
.end method

.method private c(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Lcom/facebook/orca/share/ShareMediaBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;-><init>()V

    .line 133
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Ljava/lang/String;)V

    .line 134
    const-string v1, "alt"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->b(Ljava/lang/String;)V

    .line 135
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->c(Ljava/lang/String;)V

    .line 136
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->d(Ljava/lang/String;)V

    .line 137
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/database/DbSharesSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaPhoto;)V

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;->g()Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/database/DbSharesSerialization;->e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaVideo;)V

    goto :goto_0
.end method

.method private static d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 2
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;-><init>()V

    .line 147
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(Ljava/lang/String;)V

    .line 148
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(Ljava/lang/String;)V

    .line 149
    const-string v1, "fbid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->c(Ljava/lang/String;)V

    .line 150
    const-string v1, "owner"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->d(Ljava/lang/String;)V

    .line 151
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(I)V

    .line 153
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(I)V

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->g()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    return-object v0
.end method

.method private static e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 2
    .parameter

    .prologue
    .line 159
    new-instance v0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;-><init>()V

    .line 160
    const-string v1, "display_url"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a(Ljava/lang/String;)V

    .line 161
    const-string v1, "source_url"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b(Ljava/lang/String;)V

    .line 162
    const-string v1, "owner"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c(Ljava/lang/String;)V

    .line 163
    const-string v1, "source_type"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->e()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    return-object v0
.end method

.method private static f(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 171
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    new-instance v3, Lcom/facebook/orca/share/SharePropertyBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;-><init>()V

    .line 173
    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->a(Ljava/lang/String;)V

    .line 174
    const-string v4, "text"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->b(Ljava/lang/String;)V

    .line 175
    const-string v4, "href"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/facebook/orca/share/SharePropertyBuilder;->c(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;->d()Lcom/facebook/orca/share/ShareProperty;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 104
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 106
    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/Share;

    .line 30
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 31
    const-string v4, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v4, "caption"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v4, "description"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "href"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "media"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/orca/database/DbSharesSerialization;->b(Ljava/util/List;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 36
    const-string v4, "properties"

    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/database/DbSharesSerialization;->a(Ljava/util/Collection;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 37
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
