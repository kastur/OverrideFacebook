.class public Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;
.super Ljava/lang/Object;
.source "AttachmentDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->z()Ljava/util/Iterator;

    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 26
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

    .line 32
    const-string v4, "image_data"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    const-string v4, "image_data"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 34
    new-instance v4, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;

    const-string v5, "width"

    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v5

    const-string v6, "height"

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/threads/AttachmentInfo$ImageData;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a(Lcom/facebook/orca/threads/AttachmentInfo$ImageData;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;

    .line 38
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->g()Lcom/facebook/orca/threads/AttachmentInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto/16 :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
