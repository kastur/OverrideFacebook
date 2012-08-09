.class public Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;
.super Ljava/lang/Object;
.source "ChatSetVisibilityMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Boolean;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 23
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "visible"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "chatSetVisibility"

    const-string v2, "POST"

    const-string v3, "method/chat.setVisibility"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 24
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static a(Ljava/lang/Boolean;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 38
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;->a(Ljava/lang/Boolean;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;->a(Ljava/lang/Boolean;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
