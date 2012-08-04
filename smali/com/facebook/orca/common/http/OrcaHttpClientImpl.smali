.class final Lcom/facebook/orca/common/http/OrcaHttpClientImpl;
.super Ljava/lang/Object;
.source "OrcaHttpClientImpl.java"

# interfaces
.implements Lcom/facebook/orca/common/http/OrcaHttpClient;


# static fields
.field private static final a:Lcom/facebook/apache/http/HttpRequestInterceptor;


# instance fields
.field private final b:Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

.field private final c:Lcom/facebook/orca/common/http/OrcaCookieStore;

.field private d:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$1;

    invoke-direct {v0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->a:Lcom/facebook/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->d:Ljava/lang/RuntimeException;

    .line 82
    iput-object p3, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->c:Lcom/facebook/orca/common/http/OrcaCookieStore;

    .line 83
    new-instance v0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl$2;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b:Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b:Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;

    invoke-direct {v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestRetryHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/client/HttpRequestRetryHandler;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)Lcom/facebook/orca/common/http/OrcaCookieStore;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->c:Lcom/facebook/orca/common/http/OrcaCookieStore;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/facebook/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->a:Lcom/facebook/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/http/OrcaHttpClientImpl;)Lcom/facebook/orca/common/http/OrcaHttpClientImpl$LoggingConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v0, "curl "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {p0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 277
    if-nez p1, :cond_0

    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Authorization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lcom/facebook/apache/http/Header;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cookie"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    :cond_0
    const-string v5, "--header \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v4, "\" "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_2
    invoke-interface {p0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v1

    .line 292
    instance-of v0, p0, Lcom/facebook/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 293
    check-cast v0, Lcom/facebook/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->l()Lcom/facebook/apache/http/HttpRequest;

    move-result-object v0

    .line 294
    instance-of v3, v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    if-eqz v3, :cond_5

    .line 295
    check-cast v0, Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v0

    .line 299
    :goto_1
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    instance-of v0, p0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    .line 304
    check-cast p0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    .line 306
    invoke-interface {p0}, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpEntity;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 309
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    invoke-interface {v0, v1}, Lcom/facebook/apache/http/HttpEntity;->a(Ljava/io/OutputStream;)V

    .line 311
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, " --data-ascii \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_4
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b:Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->b:Lcom/facebook/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/impl/client/DefaultHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/facebook/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->c:Lcom/facebook/orca/common/http/OrcaCookieStore;

    return-object v0
.end method

.method protected final finalize()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->d:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->d:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;->d:Ljava/lang/RuntimeException;

    .line 127
    :cond_0
    return-void
.end method
