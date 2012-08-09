.class public Lcom/facebook/apache/http/client/CircularRedirectException;
.super Lcom/facebook/apache/http/client/RedirectException;
.source "CircularRedirectException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/apache/http/client/RedirectException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
