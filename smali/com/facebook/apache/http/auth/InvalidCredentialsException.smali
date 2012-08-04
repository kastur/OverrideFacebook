.class public Lcom/facebook/apache/http/auth/InvalidCredentialsException;
.super Lcom/facebook/apache/http/auth/AuthenticationException;
.source "InvalidCredentialsException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/apache/http/auth/AuthenticationException;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
