.class public Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;
.super Ljava/lang/Object;
.source "CustomResponseHandlerForBatch.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    .line 51
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 53
    new-instance v4, Lcom/facebook/apache/http/message/BasicHeader;

    invoke-direct {v4, v3, v2}, Lcom/facebook/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 25
    const-string v0, "headers"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b:Ljava/util/List;

    .line 27
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a:I

    .line 28
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    .line 30
    iget v1, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    .line 31
    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    .line 33
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/client/HttpResponseException;

    iget v1, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a:I

    return v0
.end method
