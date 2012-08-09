.class Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "ClientGZipContentCompression.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/common/http/ClientGZipContentCompression$MyHttpRequestInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    const-string v0, "Accept-Encoding"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p1, v0, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method
