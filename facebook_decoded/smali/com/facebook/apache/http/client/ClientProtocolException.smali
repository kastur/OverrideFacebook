.class public Lcom/facebook/apache/http/client/ClientProtocolException;
.super Ljava/io/IOException;
.source "ClientProtocolException.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/facebook/apache/http/client/ClientProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 53
    return-void
.end method
