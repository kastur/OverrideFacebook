.class Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;
.super Lcom/facebook/apache/http/impl/client/DefaultHttpClient;
.source "OrcaHttpClientImpl.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    invoke-direct {p0, p2, p3}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b()Lcom/facebook/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 89
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$CurlLogger;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;B)V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 90
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->a()Lcom/facebook/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 91
    invoke-static {}, Lcom/facebook/orca/common/http/ClientGZipContentCompression;->b()Lcom/facebook/apache/http/HttpResponseInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    .line 92
    return-object v0
.end method

.method protected final c()Lcom/facebook/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 100
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->e()Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->f()Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->g()Lcom/facebook/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;->a:Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    invoke-static {v2}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)Lcom/facebook/orca/common/http/OrcaCookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    return-object v0
.end method
