.class public Lcom/facebook/apache/http/auth/MalformedChallengeException;
.super Lcom/facebook/apache/http/ProtocolException;
.source "MalformedChallengeException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/apache/http/ProtocolException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
