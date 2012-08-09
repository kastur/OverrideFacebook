.class public Lcom/facebook/orca/database/DbMediaResourceSerialization;
.super Ljava/lang/Object;
.source "DbMediaResourceSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 36
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v2

    .line 39
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    goto :goto_0
.end method

.method static a(Lcom/facebook/orca/attachments/MediaResource;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 25
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "uri"

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
