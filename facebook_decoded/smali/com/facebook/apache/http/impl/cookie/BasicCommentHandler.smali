.class public Lcom/facebook/apache/http/impl/cookie/BasicCommentHandler;
.super Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicCommentHandler.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/apache/http/cookie/SetCookie;->c(Ljava/lang/String;)V

    .line 51
    return-void
.end method
