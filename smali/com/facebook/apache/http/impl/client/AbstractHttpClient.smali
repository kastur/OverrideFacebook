.class public abstract Lcom/facebook/apache/http/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lcom/facebook/apache/http/client/HttpClient;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;

.field private b:Lcom/facebook/apache/http/params/HttpParams;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Lcom/facebook/apache/http/ConnectionReuseStrategy;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private f:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private g:Lcom/facebook/apache/http/cookie/CookieSpecRegistry;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/facebook/apache/http/auth/AuthSchemeRegistry;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private k:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private l:Lcom/facebook/apache/http/client/RedirectStrategy;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private m:Lcom/facebook/apache/http/client/AuthenticationHandler;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private n:Lcom/facebook/apache/http/client/AuthenticationHandler;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private o:Lcom/facebook/apache/http/client/CookieStore;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private p:Lcom/facebook/apache/http/client/CredentialsProvider;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private q:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private r:Lcom/facebook/apache/http/client/UserTokenHandler;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 260
    iput-object p2, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 261
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 262
    return-void
.end method

.method private declared-synchronized A()Lcom/facebook/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->m:Lcom/facebook/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->o()Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->m:Lcom/facebook/apache/http/client/AuthenticationHandler;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->m:Lcom/facebook/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()Lcom/facebook/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->n:Lcom/facebook/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 565
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->p()Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->n:Lcom/facebook/apache/http/client/AuthenticationHandler;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->n:Lcom/facebook/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()Lcom/facebook/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->o:Lcom/facebook/apache/http/client/CookieStore;

    if-nez v0, :cond_0

    .line 579
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->q()Lcom/facebook/apache/http/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->o:Lcom/facebook/apache/http/client/CookieStore;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->o:Lcom/facebook/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized D()Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->q:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->s()Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->q:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->q:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized E()Lcom/facebook/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->r:Lcom/facebook/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 618
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->t()Lcom/facebook/apache/http/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->r:Lcom/facebook/apache/http/client/UserTokenHandler;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->r:Lcom/facebook/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized F()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->i:Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->i:Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->i:Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized G()Lcom/facebook/apache/http/protocol/HttpProcessor;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;

    if-nez v1, :cond_2

    .line 640
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->F()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v2

    .line 642
    invoke-virtual {v2}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a()I

    move-result v3

    .line 643
    new-array v4, v3, [Lcom/facebook/apache/http/HttpRequestInterceptor;

    move v1, v0

    .line 644
    :goto_0
    if-ge v1, v3, :cond_0

    .line 645
    invoke-virtual {v2, v1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(I)Lcom/facebook/apache/http/HttpRequestInterceptor;

    move-result-object v5

    aput-object v5, v4, v1

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b()I

    move-result v1

    .line 648
    new-array v3, v1, [Lcom/facebook/apache/http/HttpResponseInterceptor;

    .line 649
    :goto_1
    if-ge v0, v1, :cond_1

    .line 650
    invoke-virtual {v2, v0}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(I)Lcom/facebook/apache/http/HttpResponseInterceptor;

    move-result-object v5

    aput-object v5, v3, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    :cond_1
    new-instance v0, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;

    invoke-direct {v0, v4, v3}, Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lcom/facebook/apache/http/HttpRequestInterceptor;[Lcom/facebook/apache/http/HttpResponseInterceptor;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/apache/http/protocol/HttpRequestExecutor;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/ConnectionReuseStrategy;Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/client/HttpRequestRetryHandler;Lcom/facebook/apache/http/client/RedirectStrategy;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/UserTokenHandler;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/client/RequestDirector;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 867
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a:Lcom/facebook/apache/commons/logging/Log;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;-><init>(Lcom/facebook/apache/commons/logging/Log;Lcom/facebook/apache/http/protocol/HttpRequestExecutor;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/ConnectionReuseStrategy;Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/client/HttpRequestRetryHandler;Lcom/facebook/apache/http/client/RedirectStrategy;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/UserTokenHandler;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private a(Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/params/HttpParams;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 898
    new-instance v0, Lcom/facebook/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/facebook/apache/http/impl/client/ClientParamsStack;-><init>(Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private static b(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpHost;
    .locals 4
    .parameter

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    invoke-interface {p0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-static {v1}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    .line 761
    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lcom/facebook/apache/http/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI does not specify a valid host name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    return-object v0
.end method

.method private h()Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 5

    .prologue
    .line 293
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/SchemeRegistryFactory;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 295
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v1

    .line 298
    const/4 v2, 0x0

    .line 300
    const-string v4, "http.connection-manager.factory-class-name"

    invoke-interface {v1, v4}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    if-eqz v1, :cond_1

    .line 304
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/facebook/apache/http/conn/ClientConnectionManagerFactory;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 314
    :goto_0
    if-eqz v1, :cond_0

    .line 315
    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ClientConnectionManagerFactory;->a()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 320
    :goto_1
    return-object v1

    .line 307
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid class name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :catch_1
    move-exception v1

    .line 309
    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :catch_2
    move-exception v1

    .line 311
    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_0
    new-instance v1, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v3}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private static i()Lcom/facebook/apache/http/auth/AuthSchemeRegistry;
    .locals 3

    .prologue
    .line 325
    new-instance v0, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 326
    const-string v1, "Basic"

    new-instance v2, Lcom/facebook/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/auth/AuthSchemeFactory;)V

    .line 329
    const-string v1, "Digest"

    new-instance v2, Lcom/facebook/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/auth/AuthSchemeFactory;)V

    .line 332
    const-string v1, "NTLM"

    new-instance v2, Lcom/facebook/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/auth/AuthSchemeRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/auth/AuthSchemeFactory;)V

    .line 335
    return-object v0
.end method

.method private static j()Lcom/facebook/apache/http/cookie/CookieSpecRegistry;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;-><init>()V

    .line 341
    const-string v1, "best-match"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 344
    const-string v1, "compatibility"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 347
    const-string v1, "netscape"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 350
    const-string v1, "rfc2109"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 353
    const-string v1, "rfc2965"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 356
    const-string v1, "ignoreCookies"

    new-instance v2, Lcom/facebook/apache/http/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v2}, Lcom/facebook/apache/http/impl/cookie/IgnoreSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/apache/http/cookie/CookieSpecRegistry;->a(Ljava/lang/String;Lcom/facebook/apache/http/cookie/CookieSpecFactory;)V

    .line 359
    return-object v0
.end method

.method private static k()Lcom/facebook/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method private static l()Lcom/facebook/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/facebook/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method private static m()Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/facebook/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/facebook/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/facebook/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method private static q()Lcom/facebook/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/facebook/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method private static r()Lcom/facebook/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method private s()Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;
    .locals 2

    .prologue
    .line 410
    new-instance v0, Lcom/facebook/apache/http/impl/conn/DefaultHttpRoutePlanner;

    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->u()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/conn/DefaultHttpRoutePlanner;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method private static t()Lcom/facebook/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method private declared-synchronized u()Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->h()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->d:Lcom/facebook/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()Lcom/facebook/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->c:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->k()Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->c:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->c:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized w()Lcom/facebook/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->e:Lcom/facebook/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 483
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->l()Lcom/facebook/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->e:Lcom/facebook/apache/http/ConnectionReuseStrategy;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->e:Lcom/facebook/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized x()Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->f:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 496
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->m()Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->f:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->f:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized y()Lcom/facebook/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->k:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 509
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->n()Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->k:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->k:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()Lcom/facebook/apache/http/client/RedirectStrategy;
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->l:Lcom/facebook/apache/http/client/RedirectStrategy;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->l:Lcom/facebook/apache/http/client/RedirectStrategy;

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->l:Lcom/facebook/apache/http/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 779
    if-nez p2, :cond_0

    .line 780
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    :cond_0
    monitor-enter p0

    .line 793
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->c()Lcom/facebook/apache/http/protocol/HttpContext;

    move-result-object v2

    .line 794
    if-nez p3, :cond_1

    move-object v15, v2

    .line 800
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->v()Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->u()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->w()Lcom/facebook/apache/http/ConnectionReuseStrategy;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->x()Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->D()Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->G()Lcom/facebook/apache/http/protocol/HttpProcessor;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->y()Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->z()Lcom/facebook/apache/http/client/RedirectStrategy;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->A()Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->B()Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->E()Lcom/facebook/apache/http/client/UserTokenHandler;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a(Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v14

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a(Lcom/facebook/apache/http/protocol/HttpRequestExecutor;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/ConnectionReuseStrategy;Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/client/HttpRequestRetryHandler;Lcom/facebook/apache/http/client/RedirectStrategy;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/UserTokenHandler;Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/client/RequestDirector;

    move-result-object v2

    .line 813
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v15}, Lcom/facebook/apache/http/client/RequestDirector;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    :try_end_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    .line 797
    :cond_1
    :try_start_2
    new-instance v3, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lcom/facebook/apache/http/protocol/DefaultedHttpContext;-><init>(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/protocol/HttpContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v3

    goto :goto_0

    .line 813
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 817
    :catch_0
    move-exception v2

    .line 818
    new-instance v3, Lcom/facebook/apache/http/client/ClientProtocolException;

    invoke-direct {v3, v2}, Lcom/facebook/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpResponse;
    .locals 1
    .parameter

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 745
    if-nez p1, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    invoke-static {p1}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b(Lcom/facebook/apache/http/client/methods/HttpUriRequest;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lcom/facebook/apache/http/params/HttpParams;
.end method

.method public final declared-synchronized a(Lcom/facebook/apache/http/client/HttpRequestRetryHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->k:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->F()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->b(Ljava/lang/Class;)V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;
.end method

.method public final declared-synchronized b(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->F()Lcom/facebook/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/protocol/BasicHttpProcessor;->a(Ljava/lang/Class;)V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j:Lcom/facebook/apache/http/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Lcom/facebook/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 272
    new-instance v0, Lcom/facebook/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcom/facebook/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 273
    const-string v1, "http.scheme-registry"

    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->u()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->e()Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->f()Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v1, "http.cookie-store"

    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->C()Lcom/facebook/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->g()Lcom/facebook/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    return-object v0
.end method

.method public final declared-synchronized d()Lcom/facebook/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b:Lcom/facebook/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->a()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b:Lcom/facebook/apache/http/params/HttpParams;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->b:Lcom/facebook/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/facebook/apache/http/auth/AuthSchemeRegistry;
    .locals 1

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->h:Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 457
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->i()Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->h:Lcom/facebook/apache/http/auth/AuthSchemeRegistry;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->h:Lcom/facebook/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/facebook/apache/http/cookie/CookieSpecRegistry;
    .locals 1

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->g:Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 470
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->j()Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->g:Lcom/facebook/apache/http/cookie/CookieSpecRegistry;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->g:Lcom/facebook/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Lcom/facebook/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->p:Lcom/facebook/apache/http/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 592
    invoke-static {}, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->r()Lcom/facebook/apache/http/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->p:Lcom/facebook/apache/http/client/CredentialsProvider;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/AbstractHttpClient;->p:Lcom/facebook/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
