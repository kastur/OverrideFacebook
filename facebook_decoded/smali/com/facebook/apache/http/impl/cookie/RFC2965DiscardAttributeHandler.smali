.class public Lcom/facebook/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965DiscardAttributeHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    instance-of v0, p1, Lcom/facebook/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/facebook/apache/http/cookie/SetCookie2;

    .line 55
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/cookie/SetCookie2;->b(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method
