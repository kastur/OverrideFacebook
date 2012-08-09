.class public Lcom/facebook/apache/http/client/protocol/RequestAcceptEncoding;
.super Ljava/lang/Object;
.source "RequestAcceptEncoding.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
