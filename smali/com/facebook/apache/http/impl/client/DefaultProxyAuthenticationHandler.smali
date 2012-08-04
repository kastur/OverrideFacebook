.class public Lcom/facebook/apache/http/impl/client/DefaultProxyAuthenticationHandler;
.super Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;
.source "DefaultProxyAuthenticationHandler.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/HttpResponse;",
            "Lcom/facebook/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.auth.proxy-scheme-pref"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/apache/http/impl/client/AbstractAuthenticationHandler;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/HttpResponse;)Z
    .locals 2
    .parameter

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 64
    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/apache/http/HttpResponse;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpResponse;->b(Ljava/lang/String;)[Lcom/facebook/apache/http/Header;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/facebook/apache/http/impl/client/DefaultProxyAuthenticationHandler;->a([Lcom/facebook/apache/http/Header;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
