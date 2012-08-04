.class public Lcom/facebook/apache/http/client/RedirectException;
.super Lcom/facebook/apache/http/ProtocolException;
.source "RedirectException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/apache/http/ProtocolException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
