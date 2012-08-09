.class Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategyAdaptor.java"

# interfaces
.implements Lcom/facebook/apache/http/client/RedirectStrategy;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/client/RedirectHandler;


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcom/facebook/apache/http/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcom/facebook/apache/http/client/RedirectHandler;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategyAdaptor;->a:Lcom/facebook/apache/http/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcom/facebook/apache/http/client/RedirectHandler;->b(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 69
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    .line 73
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method
