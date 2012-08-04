.class public Lcom/facebook/apache/http/cookie/CookieRestrictionViolationException;
.super Lcom/facebook/apache/http/cookie/MalformedCookieException;
.source "CookieRestrictionViolationException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
