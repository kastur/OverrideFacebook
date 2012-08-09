.class public Lcom/facebook/orca/appconfig/AppConfigSerialization;
.super Ljava/lang/Object;
.source "AppConfigSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 6
    .parameter

    .prologue
    .line 22
    const-string v0, "min_version"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "current_version"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "new_version_url"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v3, "min_version_code"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    .line 26
    const-string v4, "current_version_code"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v4

    .line 28
    invoke-static {}, Lcom/facebook/orca/appconfig/AppConfig;->newBuilder()Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->a(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->b(I)Lcom/facebook/orca/appconfig/AppConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/appconfig/AppConfigBuilder;->f()Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/appconfig/AppConfig;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 38
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 39
    const-string v1, "min_version"

    invoke-virtual {p0}, Lcom/facebook/orca/appconfig/AppConfig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "current_version"

    invoke-virtual {p0}, Lcom/facebook/orca/appconfig/AppConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "new_version_url"

    invoke-virtual {p0}, Lcom/facebook/orca/appconfig/AppConfig;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "min_version_code"

    invoke-virtual {p0}, Lcom/facebook/orca/appconfig/AppConfig;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 43
    const-string v1, "current_version_code"

    invoke-virtual {p0}, Lcom/facebook/orca/appconfig/AppConfig;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/orca/appconfig/AppConfig;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/facebook/orca/appconfig/AppConfigSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/appconfig/AppConfig;

    move-result-object v0

    return-object v0
.end method
