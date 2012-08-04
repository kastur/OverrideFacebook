.class public Lcom/facebook/apache/http/client/methods/HttpTrace;
.super Lcom/facebook/apache/http/client/methods/HttpRequestBase;
.source "HttpTrace.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "TRACE"

    return-object v0
.end method
