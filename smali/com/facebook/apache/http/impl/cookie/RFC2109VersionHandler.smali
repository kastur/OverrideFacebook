.class public Lcom/facebook/apache/http/impl/cookie/RFC2109VersionHandler;
.super Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "RFC2109VersionHandler.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/Cookie;Lcom/facebook/apache/http/cookie/CookieOrigin;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/facebook/apache/http/cookie/Cookie;->h()I

    move-result v0

    if-gez v0, :cond_1

    .line 74
    new-instance v0, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;

    const-string v1, "Cookie version may not be negative"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    const-string v1, "Blank value for version attribute"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/cookie/SetCookie;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Lcom/facebook/apache/http/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
