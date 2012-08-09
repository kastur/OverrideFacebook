.class public Lcom/facebook/apache/http/impl/client/DefaultHttpClient;
.super Lcom/facebook/apache/http/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0, v0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 132
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->b:Lcom/facebook/apache/http/HttpVersion;

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/ProtocolVersion;)V

    .line 179
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;Z)V

    .line 181
    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;I)V

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->a(Lcom/facebook/apache/http/params/HttpParams;Z)V

    .line 192
    const-string v0, "com.facebook.apache.http.client"

    const-class v1, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/apache/http/util/VersionInfo;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/facebook/apache/http/util/VersionInfo;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/apache/http/util/VersionInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apache-HttpClient/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 198
    return-void

    .line 194
    :cond_0
    const-string v0, "UNAVAILABLE"

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/facebook/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/apache/http/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lcom/facebook/apache/http/params/SyncBasicHttpParams;-><init>()V

    .line 162
    invoke-static {v0}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 163
    return-object v0
.end method

.method protected b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 204
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 206
    new-instance v1, Lcom/facebook/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lcom/facebook/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 207
    new-instance v1, Lcom/facebook/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lcom/facebook/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 209
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 210
    new-instance v1, Lcom/facebook/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lcom/facebook/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 211
    new-instance v1, Lcom/facebook/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lcom/facebook/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 213
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    .line 216
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 217
    new-instance v1, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/ResponseAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    .line 218
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 219
    new-instance v1, Lcom/facebook/apache/http/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lcom/facebook/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Lcom/facebook/apache/http/HttpRequestInterceptor;)V

    .line 220
    return-object v0
.end method
