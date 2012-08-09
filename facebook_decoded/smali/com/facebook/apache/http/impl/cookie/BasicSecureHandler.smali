.class public Lcom/facebook/apache/http/impl/cookie/BasicSecureHandler;
.super Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicSecureHandler.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/cookie/SetCookie;->a(Z)V

    .line 53
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie origin may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/apache/http/cookie/CookieOrigin;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
