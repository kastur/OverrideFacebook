.class public Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;
.super Ljava/lang/Object;
.source "AuthenticateSsoMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;",
        "Lcom/facebook/orca/protocol/methods/AuthenticationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    .line 40
    return-void
.end method

.method private a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 45
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 46
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "access_token"

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "new_app_id"

    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "machine_id"

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;->b(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "authenticate"

    const-string v2, "POST"

    const-string v3, "method/auth.getSessionForApp"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "generate_machine_id"

    const-string v2, "1"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/protocol/methods/AuthenticationResult;
    .locals 5
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 65
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "machine_id"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v2, Lcom/facebook/orca/auth/FacebookCredentials;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/orca/auth/FacebookCredentials;-><init>(Ljava/lang/String;J)V

    .line 68
    new-instance v1, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;-><init>(Lcom/facebook/orca/auth/FacebookCredentials;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-static {p2}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    move-result-object v0

    return-object v0
.end method
