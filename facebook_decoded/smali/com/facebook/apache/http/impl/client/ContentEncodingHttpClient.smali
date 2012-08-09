.class public Lcom/facebook/apache/http/impl/client/ContentEncodingHttpClient;
.super Lcom/facebook/apache/http/impl/client/DefaultHttpClient;
.source "ContentEncodingHttpClient.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/client/ContentEncodingHttpClient;-><init>(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Lcom/facebook/apache/http/impl/client/ContentEncodingHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected final b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 77
    new-instance v1, Lcom/facebook/apache/http/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    .line 79
    return-object v0
.end method
