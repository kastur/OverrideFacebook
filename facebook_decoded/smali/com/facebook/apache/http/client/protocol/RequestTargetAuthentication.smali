.class public Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;
.super Ljava/lang/Object;
.source "RequestTargetAuthentication.java"

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 61
    return-void
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
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP context may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v1

    .line 74
    const-string v2, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    const-string v1, "http.auth.target-scope"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/auth/AuthState;

    .line 85
    if-nez v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Target auth state not set in the context"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v3

    .line 96
    if-nez v3, :cond_5

    .line 97
    iget-object v1, p0, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "User credentials not available"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->e()Lcom/facebook/apache/http/auth/AuthScope;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v2}, Lcom/facebook/apache/http/auth/AuthScheme;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_6
    :try_start_0
    instance-of v1, v2, Lcom/facebook/apache/http/auth/ContextAwareAuthScheme;

    if-eqz v1, :cond_7

    .line 105
    move-object v0, v2

    check-cast v0, Lcom/facebook/apache/http/auth/ContextAwareAuthScheme;

    move-object v1, v0

    invoke-interface {v1, v3, p1}, Lcom/facebook/apache/http/auth/ContextAwareAuthScheme;->b(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;

    move-result-object v1

    .line 110
    :goto_1
    invoke-interface {p1, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/Header;)V
    :try_end_0
    .catch Lcom/facebook/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    iget-object v2, p0, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authentication error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_7
    :try_start_1
    invoke-interface {v2, v3, p1}, Lcom/facebook/apache/http/auth/AuthScheme;->a(Lcom/facebook/apache/http/auth/Credentials;Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/Header;
    :try_end_1
    .catch Lcom/facebook/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method
