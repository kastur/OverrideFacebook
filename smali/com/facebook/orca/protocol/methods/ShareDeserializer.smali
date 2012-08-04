.class public Lcom/facebook/orca/protocol/methods/ShareDeserializer;
.super Ljava/lang/Object;
.source "ShareDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/share/ShareBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareBuilder;-><init>()V

    .line 30
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/lang/String;)V

    .line 31
    const-string v1, "caption"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/lang/String;)V

    .line 32
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->c(Ljava/lang/String;)V

    .line 33
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->d(Ljava/lang/String;)V

    .line 35
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->a(Ljava/util/List;)V

    .line 38
    :cond_0
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->c(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareBuilder;->b(Ljava/util/List;)V

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareBuilder;->g()Lcom/facebook/orca/share/Share;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;
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
    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 47
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "text"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    new-instance v3, Lcom/facebook/orca/share/SharePropertyBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;-><init>()V

    .line 49
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->a(Ljava/lang/String;)V

    .line 50
    const-string v4, "text"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/share/SharePropertyBuilder;->b(Ljava/lang/String;)V

    .line 51
    const-string v4, "href"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/share/SharePropertyBuilder;->c(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Lcom/facebook/orca/share/SharePropertyBuilder;->d()Lcom/facebook/orca/share/ShareProperty;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    return-object v1
.end method

.method private d(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
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
    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 61
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMedia;
    .locals 2
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/facebook/orca/share/ShareMediaBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;-><init>()V

    .line 69
    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Ljava/lang/String;)V

    .line 70
    const-string v1, "alt"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->b(Ljava/lang/String;)V

    .line 71
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->c(Ljava/lang/String;)V

    .line 72
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->d(Ljava/lang/String;)V

    .line 73
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaPhoto;)V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaBuilder;->g()Lcom/facebook/orca/share/ShareMedia;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "video"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->g(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaBuilder;->a(Lcom/facebook/orca/share/ShareMediaVideo;)V

    goto :goto_0
.end method

.method private static f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 2
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;-><init>()V

    .line 83
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(Ljava/lang/String;)V

    .line 84
    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(Ljava/lang/String;)V

    .line 85
    const-string v1, "fbid"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->c(Ljava/lang/String;)V

    .line 86
    const-string v1, "owner"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->d(Ljava/lang/String;)V

    .line 87
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->b(I)V

    .line 89
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->a(I)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaPhotoBuilder;->g()Lcom/facebook/orca/share/ShareMediaPhoto;

    move-result-object v0

    return-object v0
.end method

.method private static g(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;-><init>()V

    .line 96
    const-string v1, "display_url"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a(Ljava/lang/String;)V

    .line 97
    const-string v1, "source_url"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b(Ljava/lang/String;)V

    .line 98
    const-string v1, "owner"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c(Ljava/lang/String;)V

    .line 99
    const-string v1, "source_type"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->e()Lcom/facebook/orca/share/ShareMediaVideo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->z()Ljava/util/Iterator;

    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/methods/ShareDeserializer;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
