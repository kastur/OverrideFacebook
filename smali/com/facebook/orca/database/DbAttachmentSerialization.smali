.class public Lcom/facebook/orca/database/DbAttachmentSerialization;
.super Ljava/lang/Object;
.source "DbAttachmentSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 53
    invoke-static {p0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 55
    new-instance v3, Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;-><init>()V

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "mime_type"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    const-string v4, "file_size"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    move-result-object v3

    .line 61
    const-string v4, "image_data_width"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "image_data_height"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    const-string v5, "image_data_width"

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v5

    const-string v6, "image_data_height"

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;-><init>(II)V

    .line 66
    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(Lcom/facebook/orca/threads/AttachmentInfo$ImageData;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    .line 68
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->g()Lcom/facebook/orca/threads/AttachmentInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_1

    .line 70
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/AttachmentInfo;

    .line 32
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v4, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 33
    const-string v4, "id"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "type"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 35
    const-string v4, "mime_type"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "filename"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v4, "file_size"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->e()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 39
    const-string v4, "image_data_width"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->a()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 40
    const-string v4, "image_data_height"

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo;->f()Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;->b()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 42
    :cond_1
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
