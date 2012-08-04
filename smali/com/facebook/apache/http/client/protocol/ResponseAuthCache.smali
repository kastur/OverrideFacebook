.class public Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpResponseInterceptor;


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

    iput-object v0, p0, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 62
    return-void
.end method

.method private a(Lcom/facebook/apache/http/client/AuthCache;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthState;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p3}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 111
    invoke-virtual {p3}, Lcom/facebook/apache/http/auth/AuthState;->e()Lcom/facebook/apache/http/auth/AuthScope;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p3}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caching \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/facebook/apache/http/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-interface {p1, p2, v0}, Lcom/facebook/apache/http/client/AuthCache;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthScheme;)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-interface {p1, p2}, Lcom/facebook/apache/http/client/AuthCache;->b(Lcom/facebook/apache/http/HttpHost;)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/apache/http/auth/AuthState;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/facebook/apache/http/auth/AuthScheme;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-interface {v1}, Lcom/facebook/apache/http/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
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

    .line 72
    :cond_1
    const-string v0, "http.auth.auth-cache"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/client/AuthCache;

    .line 74
    const-string v1, "http.target_host"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/HttpHost;

    .line 75
    const-string v2, "http.auth.target-scope"

    invoke-interface {p2, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/apache/http/auth/AuthState;

    .line 76
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 77
    invoke-static {v2}, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a(Lcom/facebook/apache/http/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/facebook/apache/http/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/BasicAuthCache;-><init>()V

    .line 80
    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a(Lcom/facebook/apache/http/client/AuthCache;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthState;)V

    move-object v2, v0

    .line 86
    :goto_0
    const-string v0, "http.proxy_host"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 87
    const-string v1, "http.auth.proxy-scope"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/auth/AuthState;

    .line 88
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 89
    invoke-static {v1}, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a(Lcom/facebook/apache/http/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    if-nez v2, :cond_3

    .line 91
    new-instance v2, Lcom/facebook/apache/http/impl/client/BasicAuthCache;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/client/BasicAuthCache;-><init>()V

    .line 92
    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;->a(Lcom/facebook/apache/http/client/AuthCache;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/auth/AuthState;)V

    .line 97
    :cond_4
    return-void

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method
