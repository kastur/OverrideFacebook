.class public Lcom/facebook/apache/http/auth/AuthenticationException;
.super Lcom/facebook/apache/http/ProtocolException;
.source "AuthenticationException.java"


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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
