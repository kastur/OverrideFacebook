.class public Lcom/facebook/apache/http/cookie/MalformedCookieException;
.super Lcom/facebook/apache/http/ProtocolException;
.source "MalformedCookieException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/apache/http/ProtocolException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method
