.class public Lcom/facebook/apache/http/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 62
    return-void
.end method

.method private a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthScheme;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/CredentialsProvider;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-interface {p2}, Lcom/facebook/apache/http/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Re-using cached \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 115
    :cond_0
    new-instance v1, Lcom/facebook/apache/http/auth/AuthScope;

    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {p4, v1}, Lcom/facebook/apache/http/client/CredentialsProvider;->a(Lcom/facebook/apache/http/auth/AuthScope;)Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p3, p2}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScheme;)V

    .line 121
    invoke-virtual {p3, v0}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/Credentials;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "No credentials for preemptive authentication"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    const-string v0, "http.auth.auth-cache"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/AuthCache;

    .line 74
    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Auth cache not set in the context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 103
    :cond_2
    :goto_0
    return-void

    .line 79
    :cond_3
    const-string v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/client/CredentialsProvider;

    .line 81
    if-nez v1, :cond_4

    .line 82
    iget-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Credentials provider not set in the context"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_4
    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/HttpHost;

    .line 87
    const-string v3, "http.auth.target-scope"

    invoke-interface {p2, v3}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/apache/http/auth/AuthState;

    .line 88
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v4

    if-nez v4, :cond_5

    .line 89
    invoke-interface {v0, v2}, Lcom/facebook/apache/http/client/AuthCache;->a(Lcom/facebook/apache/http/HttpHost;)Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v4

    .line 90
    if-eqz v4, :cond_5

    .line 91
    invoke-direct {p0, v2, v4, v3, v1}, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthScheme;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/CredentialsProvider;)V

    .line 95
    :cond_5
    const-string v2, "http.proxy_host"

    invoke-interface {p2, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/HttpHost;

    .line 96
    const-string v3, "http.auth.proxy-scope"

    invoke-interface {p2, v3}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/apache/http/auth/AuthState;

    .line 97
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v4

    if-nez v4, :cond_2

    .line 98
    invoke-interface {v0, v2}, Lcom/facebook/apache/http/client/AuthCache;->a(Lcom/facebook/apache/http/HttpHost;)Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthScheme;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/CredentialsProvider;)V

    goto :goto_0
.end method
