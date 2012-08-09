.class public Lcom/facebook/orca/common/http/ClientGZipContentCompression;
.super Ljava/lang/Object;
.source "ClientGZipContentCompression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static a()Lcom/facebook/apache/http/HttpRequestInterceptor;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpRequestInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpRequestInterceptor;-><init>(B)V

    return-object v0
.end method

.method public static b()Lcom/facebook/apache/http/HttpResponseInterceptor;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpResponseInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpResponseInterceptor;-><init>(B)V

    return-object v0
.end method
