.class public Lcom/facebook/orca/database/DbDraftSerialization;
.super Ljava/lang/Object;
.source "DbDraftSerialization.java"


# instance fields
.field private a:Lcom/facebook/orca/database/DbMediaResourceSerialization;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/database/DbMediaResourceSerialization;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/database/DbDraftSerialization;->a:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    .line 24
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/facebook/orca/compose/MessageDraft;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 46
    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "attachmentData"

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string v0, "attachmentData"

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/database/DbDraftSerialization;->a:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-static {v0}, Lcom/facebook/orca/database/DbMediaResourceSerialization;->a(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    .line 51
    new-instance v0, Lcom/facebook/orca/compose/MessageDraft;

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/compose/MessageDraft;-><init>(Ljava/lang/String;Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Lcom/facebook/orca/compose/MessageDraft;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/compose/MessageDraft;-><init>(Ljava/lang/String;Lcom/facebook/orca/attachments/MediaResource;)V

    move-object v0, v1

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/compose/MessageDraft;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 31
    const-string v1, "text"

    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->b()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    iget-object v2, p0, Lcom/facebook/orca/database/DbDraftSerialization;->a:Lcom/facebook/orca/database/DbMediaResourceSerialization;

    invoke-static {v1}, Lcom/facebook/orca/database/DbMediaResourceSerialization;->a(Lcom/facebook/orca/attachments/MediaResource;)Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "attachmentData"

    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
