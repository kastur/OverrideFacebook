.class Lcom/facebook/orca/protocol/base/ApiResponseChecker;
.super Ljava/lang/Object;
.source "ApiResponseChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    throw v0

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0

    .line 72
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static a(Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Lorg/codehaus/jackson/JsonNode;)V
    :try_end_0
    .catch Lcom/facebook/orca/protocol/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    throw v0

    .line 86
    :catch_1
    move-exception v0

    goto :goto_0

    .line 87
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->b(Lorg/codehaus/jackson/JsonNode;)V

    .line 23
    return-void
.end method

.method private static b(Lorg/codehaus/jackson/JsonNode;)V
    .locals 4
    .parameter

    .prologue
    .line 26
    if-nez p0, :cond_1

    .line 57
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const-string v1, "error_code"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 36
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v1

    .line 38
    :cond_2
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const-string v1, "error"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v1

    const-string v2, "error_description"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 43
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v1

    .line 45
    :cond_3
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiErrorResult;

    const/4 v2, 0x0

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/protocol/base/ApiErrorResult;-><init>(ILjava/lang/String;)V

    .line 50
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiException;

    invoke-direct {v0, v1}, Lcom/facebook/orca/protocol/base/ApiException;-><init>(Lcom/facebook/orca/protocol/base/ApiErrorResult;)V

    throw v0

    .line 52
    :cond_4
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v1, "Response was neither an array or a dictionary"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
