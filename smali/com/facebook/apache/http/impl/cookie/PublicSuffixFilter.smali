.class public Lcom/facebook/apache/http/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lcom/facebook/apache/http/cookie/CookieAttributeHandler;


# instance fields
.field private final a:Lcom/facebook/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method private a(Lcom/facebook/apache/http/cookie/Cookie;)Z
    .locals 2
    .parameter

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->d()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/facebook/apache/http/client/utils/Punycode;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/PublicSuffixFilter;->a:Lcom/facebook/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/cookie/CookieAttributeHandler;->a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V

    .line 97
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/PublicSuffixFilter;->a:Lcom/facebook/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/cookie/CookieAttributeHandler;->a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/cookie/PublicSuffixFilter;->a(Lcom/facebook/apache/http/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/cookie/PublicSuffixFilter;->a:Lcom/facebook/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/cookie/CookieAttributeHandler;->b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method
