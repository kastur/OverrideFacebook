.class public Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lcom/facebook/apache/http/client/RequestDirector;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;

.field private b:Lcom/facebook/apache/http/conn/ClientConnectionManager;

.field private c:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

.field private d:Lcom/facebook/apache/http/ConnectionReuseStrategy;

.field private e:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

.field private f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

.field private g:Lcom/facebook/apache/http/protocol/HttpProcessor;

.field private h:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

.field private i:Lcom/facebook/apache/http/client/RedirectStrategy;

.field private j:Lcom/facebook/apache/http/client/AuthenticationHandler;

.field private k:Lcom/facebook/apache/http/client/AuthenticationHandler;

.field private l:Lcom/facebook/apache/http/client/UserTokenHandler;

.field private m:Lcom/facebook/apache/http/params/HttpParams;

.field private n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

.field private o:Lcom/facebook/apache/http/auth/AuthState;

.field private p:Lcom/facebook/apache/http/auth/AuthState;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/facebook/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/commons/logging/Log;Lcom/facebook/apache/http/protocol/HttpRequestExecutor;Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/ConnectionReuseStrategy;Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/client/HttpRequestRetryHandler;Lcom/facebook/apache/http/client/RedirectStrategy;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/client/UserTokenHandler;Lcom/facebook/apache/http/params/HttpParams;)V
    .locals 4
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
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-nez p1, :cond_0

    .line 235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Log may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_0
    if-nez p2, :cond_1

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request executor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_1
    if-nez p3, :cond_2

    .line 243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client connection manager may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_2
    if-nez p4, :cond_3

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection reuse strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_3
    if-nez p5, :cond_4

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection keep alive strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_4
    if-nez p6, :cond_5

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Route planner may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_5
    if-nez p7, :cond_6

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP protocol processor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_6
    if-nez p8, :cond_7

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request retry handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_7
    if-nez p9, :cond_8

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Redirect strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_8
    if-nez p10, :cond_9

    .line 271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_9
    if-nez p11, :cond_a

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_a
    if-nez p12, :cond_b

    .line 279
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "User token handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_b
    if-nez p13, :cond_c

    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_c
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 287
    iput-object p2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    .line 288
    iput-object p3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    .line 289
    iput-object p4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->d:Lcom/facebook/apache/http/ConnectionReuseStrategy;

    .line 290
    iput-object p5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->e:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 291
    iput-object p6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->c:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    .line 292
    iput-object p7, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->g:Lcom/facebook/apache/http/protocol/HttpProcessor;

    .line 293
    iput-object p8, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->h:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    .line 294
    iput-object p9, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->i:Lcom/facebook/apache/http/client/RedirectStrategy;

    .line 295
    iput-object p10, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->j:Lcom/facebook/apache/http/client/AuthenticationHandler;

    .line 296
    iput-object p11, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    .line 297
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->l:Lcom/facebook/apache/http/client/UserTokenHandler;

    .line 298
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 302
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->q:I

    .line 303
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->r:I

    .line 304
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    const-string v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->s:I

    .line 305
    new-instance v1, Lcom/facebook/apache/http/auth/AuthState;

    invoke-direct {v1}, Lcom/facebook/apache/http/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    .line 306
    new-instance v1, Lcom/facebook/apache/http/auth/AuthState;

    invoke-direct {v1}, Lcom/facebook/apache/http/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    .line 307
    return-void
.end method

.method private a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/HttpRequest;
    .locals 4
    .parameter

    .prologue
    .line 988
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v2

    .line 991
    invoke-virtual {v1}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v0

    .line 992
    if-gez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/scheme/Scheme;->a()I

    move-result v0

    .line 998
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 999
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v1}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v1

    .line 1005
    new-instance v2, Lcom/facebook/apache/http/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-direct {v2, v3, v0, v1}, Lcom/facebook/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/apache/http/ProtocolVersion;)V

    .line 1008
    return-object v2
.end method

.method private static a(Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/impl/client/RequestWrapper;
    .locals 1
    .parameter

    .prologue
    .line 312
    instance-of v0, p0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lcom/facebook/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcom/facebook/apache/http/HttpEntityEnclosingRequest;)V

    .line 316
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;-><init>(Lcom/facebook/apache/http/HttpRequest;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/impl/client/RoutedRequest;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1030
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 1031
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a()Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v2

    .line 1034
    invoke-static {v2}, Lcom/facebook/apache/http/client/params/HttpClientParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->i:Lcom/facebook/apache/http/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lcom/facebook/apache/http/client/RedirectStrategy;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1037
    iget v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->r:I

    iget v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->s:I

    if-lt v3, v4, :cond_0

    .line 1038
    new-instance v0, Lcom/facebook/apache/http/client/RedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum redirects ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_0
    iget v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->r:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->r:I

    .line 1044
    iput-object v8, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    .line 1046
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->i:Lcom/facebook/apache/http/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lcom/facebook/apache/http/client/RedirectStrategy;->b(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 1047
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->l()Lcom/facebook/apache/http/HttpRequest;

    move-result-object v0

    .line 1048
    invoke-interface {v0}, Lcom/facebook/apache/http/HttpRequest;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->a([Lcom/facebook/apache/http/Header;)V

    .line 1050
    invoke-interface {v3}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->h()Ljava/net/URI;

    move-result-object v0

    .line 1051
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1052
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect URI does not specify a valid host name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1055
    :cond_1
    new-instance v4, Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    iget-object v5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v5, v8}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    .line 1062
    iget-object v5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v5, v8}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    .line 1065
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1066
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->a()V

    .line 1067
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/facebook/apache/http/auth/AuthScheme;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1069
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v1}, Lcom/facebook/apache/http/auth/AuthState;->a()V

    .line 1073
    :cond_2
    invoke-static {v3}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 1074
    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 1076
    invoke-direct {p0, v4, v1, p3}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 1077
    new-instance p1, Lcom/facebook/apache/http/impl/client/RoutedRequest;

    invoke-direct {p1, v1, v2}, Lcom/facebook/apache/http/impl/client/RoutedRequest;-><init>(Lcom/facebook/apache/http/impl/client/RequestWrapper;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    .line 1079
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1080
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Redirecting to \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' via "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1155
    :cond_3
    :goto_0
    return-object p1

    .line 1086
    :cond_4
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/apache/http/client/CredentialsProvider;

    .line 1089
    if-eqz v6, :cond_9

    invoke-static {v2}, Lcom/facebook/apache/http/client/params/HttpClientParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->j:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, p2}, Lcom/facebook/apache/http/client/AuthenticationHandler;->a(Lcom/facebook/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1093
    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 1095
    if-nez v0, :cond_a

    .line 1096
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    move-object v7, v0

    .line 1099
    :goto_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Target requested authentication"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1100
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->j:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, p2}, Lcom/facebook/apache/http/client/AuthenticationHandler;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v1

    .line 1103
    :try_start_0
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->j:Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lcom/facebook/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/client/CredentialsProvider;)V

    .line 1114
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_3

    move-object p1, v8

    .line 1118
    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1108
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_5
    move-object p1, v8

    .line 1110
    goto :goto_0

    .line 1122
    :cond_6
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0, v8}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    .line 1125
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, p2}, Lcom/facebook/apache/http/client/AuthenticationHandler;->a(Lcom/facebook/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1127
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->d()Lcom/facebook/apache/http/HttpHost;

    move-result-object v7

    .line 1129
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Proxy requested authentication"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1130
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, p2}, Lcom/facebook/apache/http/client/AuthenticationHandler;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v1

    .line 1133
    :try_start_1
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lcom/facebook/apache/http/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1142
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/client/CredentialsProvider;)V

    .line 1144
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_3

    move-object p1, v8

    .line 1148
    goto/16 :goto_0

    .line 1136
    :catch_1
    move-exception v0

    .line 1137
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1138
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_7
    move-object p1, v8

    .line 1140
    goto/16 :goto_0

    .line 1152
    :cond_8
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0, v8}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    :cond_9
    move-object p1, v8

    .line 1155
    goto/16 :goto_0

    :cond_a
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 701
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "IOException releasing connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/apache/http/auth/AuthState;)V
    .locals 2
    .parameter

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/apache/http/auth/AuthScheme;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/facebook/apache/http/auth/AuthScheme;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->a()V

    .line 1267
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/client/CredentialsProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1218
    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/AuthState;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v1

    .line 1223
    invoke-virtual {p2}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v0

    .line 1224
    if-gez v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/HttpHost;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 1226
    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/scheme/Scheme;->a()I

    move-result v0

    .line 1229
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v2

    .line 1230
    new-instance v3, Lcom/facebook/apache/http/auth/AuthScope;

    invoke-interface {v2}, Lcom/facebook/apache/http/auth/AuthScheme;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/facebook/apache/http/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/facebook/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Authentication scope: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1239
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    .line 1240
    if-nez v0, :cond_5

    .line 1241
    invoke-interface {p3, v3}, Lcom/facebook/apache/http/client/CredentialsProvider;->a(Lcom/facebook/apache/http/auth/AuthScope;)Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    .line 1242
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1243
    if-eqz v0, :cond_4

    .line 1244
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Found credentials"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1255
    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    .line 1256
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/Credentials;)V

    goto :goto_0

    .line 1246
    :cond_4
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Credentials not found"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 1250
    :cond_5
    invoke-interface {v2}, Lcom/facebook/apache/http/auth/AuthScheme;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1251
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Authentication failed"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1252
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 750
    new-instance v0, Lcom/facebook/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->l()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 754
    invoke-interface {v0, p1, v1}, Lcom/facebook/apache/http/conn/routing/HttpRouteDirector;->a(Lcom/facebook/apache/http/conn/routing/RouteInfo;Lcom/facebook/apache/http/conn/routing/RouteInfo;)I

    move-result v2

    .line 756
    packed-switch v2, :pswitch_data_0

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown step indicator "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 797
    :goto_0
    :pswitch_1
    if-gtz v2, :cond_0

    .line 799
    return-void

    .line 764
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;)Z

    .line 765
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Tunnel to target created."

    invoke-interface {v1, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 766
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v1, v3, v4}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(ZLcom/facebook/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 774
    :pswitch_3
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 775
    invoke-static {}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b()Z

    move-result v3

    .line 776
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v5, "Tunnel to proxy created."

    invoke-interface {v4, v5}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 777
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a(I)Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 783
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    goto :goto_0

    .line 787
    :pswitch_5
    new-instance v0, Lcom/facebook/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to establish route: planned = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/facebook/apache/http/impl/client/RequestWrapper;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->h()Ljava/net/URI;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->d()Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a(Ljava/net/URI;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/apache/http/client/utils/URIUtils;->a(Ljava/net/URI;Lcom/facebook/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Lcom/facebook/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/apache/http/RequestLine;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 577
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a()Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 578
    const-string v1, "http.request"

    invoke-interface {p2, v1, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    const/4 v0, 0x0

    .line 583
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v1, v2, p2, v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 590
    :goto_1
    invoke-direct {p0, v2, p2}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 591
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v3}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 592
    :catch_0
    move-exception v1

    .line 594
    :try_start_1
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :goto_2
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->h:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    invoke-interface {v3, v1, v0, p2}, Lcom/facebook/apache/http/client/HttpRequestRetryHandler;->a(Ljava/io/IOException;ILcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 598
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v3}, Lcom/facebook/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "I/O exception ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") caught when connecting to the target host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 603
    :cond_1
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v3}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 604
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 606
    :cond_2
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Retrying connect"

    invoke-interface {v1, v3}, Lcom/facebook/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 608
    :cond_3
    throw v1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/apache/http/Header;",
            ">;",
            "Lcom/facebook/apache/http/auth/AuthState;",
            "Lcom/facebook/apache/http/client/AuthenticationHandler;",
            "Lcom/facebook/apache/http/HttpResponse;",
            "Lcom/facebook/apache/http/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1195
    invoke-virtual {p2}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1196
    if-nez v0, :cond_0

    .line 1198
    invoke-interface {p3, p1, p4, p5}, Lcom/facebook/apache/http/client/AuthenticationHandler;->a(Ljava/util/Map;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 1199
    invoke-virtual {p2, v0}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScheme;)V

    :cond_0
    move-object v1, v0

    .line 1201
    invoke-interface {v1}, Lcom/facebook/apache/http/auth/AuthScheme;->a()Ljava/lang/String;

    move-result-object v2

    .line 1203
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/Header;

    .line 1204
    if-nez v0, :cond_1

    .line 1205
    new-instance v0, Lcom/facebook/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authorization challenge expected, but not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_1
    invoke-interface {v1, v0}, Lcom/facebook/apache/http/auth/AuthScheme;->a(Lcom/facebook/apache/http/Header;)V

    .line 1209
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Authorization challenge processed"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1210
    return-void
.end method

.method private b(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a()Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v2

    .line 620
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    move-object v0, v1

    .line 626
    :goto_0
    iget v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->q:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->q:I

    .line 628
    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->n()V

    .line 629
    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->j()Z

    move-result v4

    if-nez v4, :cond_1

    .line 630
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Cannot retry non-repeatable request"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 631
    if-eqz v0, :cond_0

    .line 632
    new-instance v1, Lcom/facebook/apache/http/client/NonRepeatableRequestException;

    const-string v2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 636
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/client/NonRepeatableRequestException;

    const-string v1, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 645
    invoke-virtual {v3}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 646
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v4, "Reopening the direct connection."

    invoke-interface {v0, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, v3, p2, v4}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to execute request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v0, v2, v4, p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 681
    :goto_1
    return-object v1

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v4, "Proxied connection. Need to start over."

    invoke-interface {v0, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    move-exception v0

    .line 662
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v5, "Closing the connection."

    invoke-interface {v4, v5}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 664
    :try_start_1
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 667
    :goto_2
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->h:Lcom/facebook/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->m()I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lcom/facebook/apache/http/client/HttpRequestRetryHandler;->a(Ljava/io/IOException;ILcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 668
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v4}, Lcom/facebook/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 669
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "I/O exception ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when processing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 673
    :cond_5
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v4}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 674
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 676
    :cond_6
    iget-object v4, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v5, "Retrying request"

    invoke-interface {v4, v5}, Lcom/facebook/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 679
    :cond_7
    throw v0

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private b(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    if-nez p1, :cond_1

    .line 726
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 729
    :goto_0
    if-nez v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null, or set in parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->c:Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;

    invoke-interface {v1, v0, p2, p3}, Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;->a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 968
    new-instance v0, Lcom/facebook/apache/http/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 825
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->d()Lcom/facebook/apache/http/HttpHost;

    move-result-object v10

    .line 826
    invoke-virtual {p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v11

    move v0, v7

    move-object v4, v9

    .line 830
    :goto_0
    if-nez v0, :cond_3

    .line 832
    const/4 v8, 0x1

    .line 834
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V

    .line 838
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/HttpRequest;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/HttpRequest;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 842
    const-string v1, "http.target_host"

    invoke-interface {p2, v1, v11}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 844
    const-string v1, "http.proxy_host"

    invoke-interface {p2, v1, v10}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    const-string v1, "http.connection"

    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {p2, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 848
    const-string v1, "http.auth.target-scope"

    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    const-string v1, "http.auth.proxy-scope"

    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    const-string v1, "http.request"

    invoke-interface {p2, v1, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->g:Lcom/facebook/apache/http/protocol/HttpProcessor;

    invoke-static {v0, v1, p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 857
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/HttpClientConnection;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v4

    .line 859
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v4, v0}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 860
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->g:Lcom/facebook/apache/http/protocol/HttpProcessor;

    invoke-static {v4, v0, p2}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 862
    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 863
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_1

    .line 864
    new-instance v0, Lcom/facebook/apache/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response to CONNECT request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_1
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/apache/http/client/CredentialsProvider;

    .line 871
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v0}, Lcom/facebook/apache/http/client/params/HttpClientParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v4}, Lcom/facebook/apache/http/client/AuthenticationHandler;->a(Lcom/facebook/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 874
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Proxy requested authentication"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    invoke-interface {v0, v4}, Lcom/facebook/apache/http/client/AuthenticationHandler;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/util/Map;

    move-result-object v1

    .line 878
    :try_start_0
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->k:Lcom/facebook/apache/http/client/AuthenticationHandler;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Ljava/util/Map;Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/client/AuthenticationHandler;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lcom/facebook/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-direct {p0, v0, v10, v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/auth/AuthState;Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/client/CredentialsProvider;)V

    .line 889
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 893
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->d:Lcom/facebook/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v4, p2}, Lcom/facebook/apache/http/ConnectionReuseStrategy;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Connection kept alive"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 896
    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/facebook/apache/http/util/EntityUtils;->a(Lcom/facebook/apache/http/HttpEntity;)V

    move v8, v7

    :cond_2
    :goto_1
    move v0, v8

    .line 909
    goto/16 :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 883
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 911
    :cond_3
    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v0

    .line 913
    const/16 v1, 0x12b

    if-le v0, v1, :cond_7

    .line 916
    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_4

    .line 918
    new-instance v1, Lcom/facebook/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/entity/BufferedHttpEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;)V

    invoke-interface {v4, v1}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V

    .line 922
    new-instance v0, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT refused by proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/HttpResponse;)V

    throw v0

    .line 899
    :cond_5
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V

    move v0, v7

    goto/16 :goto_0

    .line 906
    :cond_6
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-virtual {v0, v9}, Lcom/facebook/apache/http/auth/AuthState;->a(Lcom/facebook/apache/http/auth/AuthScope;)V

    goto :goto_1

    .line 926
    :cond_7
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V

    .line 932
    return v7

    :cond_8
    move v0, v8

    goto/16 :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 1166
    if-eqz v0, :cond_1

    .line 1169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    .line 1171
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->i()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1184
    :cond_1
    :goto_1
    return-void

    .line 1172
    :catch_0
    move-exception v1

    .line 1173
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1180
    :catch_1
    move-exception v0

    .line 1181
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Error releasing connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 355
    .line 356
    invoke-static {p2}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/HttpRequest;)Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v4

    .line 357
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-virtual {v4, v1}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 358
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v4, v0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    .line 360
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.virtual-host"

    invoke-interface {v1, v2}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/HttpHost;

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    .line 364
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->b()I

    move-result v1

    .line 367
    if-eq v1, v6, :cond_0

    .line 368
    new-instance v2, Lcom/facebook/apache/http/HttpHost;

    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v6}, Lcom/facebook/apache/http/HttpHost;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v7}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v1, v7}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    .line 372
    :cond_0
    new-instance v2, Lcom/facebook/apache/http/impl/client/RoutedRequest;

    invoke-direct {v2, v4, v5}, Lcom/facebook/apache/http/impl/client/RoutedRequest;-><init>(Lcom/facebook/apache/http/impl/client/RequestWrapper;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    .line 377
    const/4 v1, 0x0

    move v4, v3

    .line 378
    :goto_0
    if-nez v3, :cond_9

    .line 384
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a()Lcom/facebook/apache/http/impl/client/RequestWrapper;

    move-result-object v5

    .line 385
    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 386
    const-string v1, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 392
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-nez v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b:Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1, v6, v7}, Lcom/facebook/apache/http/conn/ClientConnectionManager;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lcom/facebook/apache/http/conn/ClientConnectionRequest;

    move-result-object v8

    .line 395
    instance-of v1, p2, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_1

    .line 396
    move-object v0, p2

    check-cast v0, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;

    move-object v1, v0

    invoke-interface {v1, v8}, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;->a(Lcom/facebook/apache/http/conn/ClientConnectionRequest;)V

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v1}, Lcom/facebook/apache/http/conn/params/ConnManagerParams;->a(Lcom/facebook/apache/http/params/HttpParams;)J
    :try_end_0
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v9

    .line 401
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v9, v10, v1}, Lcom/facebook/apache/http/conn/ClientConnectionRequest;->a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/conn/ManagedClientConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 408
    :try_start_2
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-static {v1}, Lcom/facebook/apache/http/params/HttpConnectionParams;->g(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v8, "Stale connection check"

    invoke-interface {v1, v8}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 412
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v8, "Stale connection detected"

    invoke-interface {v1, v8}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    .line 431
    :cond_2
    :goto_1
    :try_start_4
    instance-of v1, p2, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_3

    .line 432
    move-object v0, p2

    check-cast v0, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;

    move-object v1, v0

    iget-object v8, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1, v8}, Lcom/facebook/apache/http/client/methods/AbortableHttpRequest;->a(Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;)V
    :try_end_4
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 436
    :cond_3
    :try_start_5
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    :try_end_5
    .catch Lcom/facebook/apache/http/impl/client/TunnelRefusedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 446
    :try_start_6
    invoke-virtual {v5}, Lcom/facebook/apache/http/impl/client/RequestWrapper;->k()V

    .line 449
    invoke-static {v5, v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/impl/client/RequestWrapper;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    .line 452
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->t:Lcom/facebook/apache/http/HttpHost;

    .line 454
    if-nez v1, :cond_4

    .line 455
    invoke-virtual {v6}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->a()Lcom/facebook/apache/http/HttpHost;

    move-result-object v1

    .line 458
    :cond_4
    invoke-virtual {v6}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->d()Lcom/facebook/apache/http/HttpHost;

    move-result-object v6

    .line 461
    const-string v8, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v1, "http.proxy_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v1, "http.connection"

    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v1, "http.auth.target-scope"

    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    const-string v1, "http.auth.proxy-scope"

    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->g:Lcom/facebook/apache/http/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-static {v5, v1, v0}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 475
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->b(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpResponse;

    move-result-object v5

    .line 476
    if-eqz v5, :cond_11

    .line 478
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->m:Lcom/facebook/apache/http/params/HttpParams;

    invoke-interface {v5, v1}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 483
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->f:Lcom/facebook/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->g:Lcom/facebook/apache/http/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-static {v5, v1, v0}, Lcom/facebook/apache/http/protocol/HttpRequestExecutor;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpProcessor;Lcom/facebook/apache/http/protocol/HttpContext;)V

    .line 487
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->d:Lcom/facebook/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v1, v5, v0}, Lcom/facebook/apache/http/ConnectionReuseStrategy;->a(Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Z

    move-result v4

    .line 488
    if-eqz v4, :cond_6

    .line 490
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->e:Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v1, v5}, Lcom/facebook/apache/http/conn/ConnectionKeepAliveStrategy;->a(Lcom/facebook/apache/http/HttpResponse;)J

    move-result-wide v8

    .line 491
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 493
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_c

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "for "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    :goto_2
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Connection can be kept alive "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v6}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 503
    :cond_6
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v5, v0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/impl/client/RoutedRequest;Lcom/facebook/apache/http/HttpResponse;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/impl/client/RoutedRequest;

    move-result-object v1

    .line 504
    if-nez v1, :cond_d

    .line 505
    const/4 v1, 0x1

    move-object v12, v2

    move v2, v1

    move-object v1, v12

    .line 526
    :goto_3
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    if-eqz v3, :cond_7

    if-nez v7, :cond_7

    .line 527
    iget-object v3, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->l:Lcom/facebook/apache/http/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/facebook/apache/http/client/UserTokenHandler;->a(Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v3

    .line 528
    const-string v6, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v3}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    if-eqz v3, :cond_7

    .line 530
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6, v3}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->a(Ljava/lang/Object;)V

    :cond_7
    move v3, v2

    move-object v2, v1

    move-object v1, v5

    .line 534
    goto/16 :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 404
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 405
    throw v2
    :try_end_6
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 553
    :catch_1
    move-exception v1

    .line 554
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 557
    throw v2

    .line 437
    :catch_2
    move-exception v1

    .line 438
    :try_start_7
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 439
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 441
    :cond_8
    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/client/TunnelRefusedException;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v1

    .line 538
    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpEntity;->g()Z

    move-result v2

    if-nez v2, :cond_10

    .line 541
    :cond_a
    if-eqz v4, :cond_b

    .line 542
    iget-object v2, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V

    .line 543
    :cond_b
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a()V

    .line 551
    :goto_4
    return-object v1

    .line 496
    :cond_c
    const-string v1, "indefinitely"

    goto/16 :goto_2

    .line 507
    :cond_d
    if-eqz v4, :cond_f

    .line 509
    invoke-interface {v5}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v6

    .line 510
    invoke-static {v6}, Lcom/facebook/apache/http/util/EntityUtils;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 513
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->n()V

    .line 520
    :goto_5
    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 521
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a()V

    :cond_e
    move v2, v3

    .line 523
    goto/16 :goto_3

    .line 515
    :cond_f
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lcom/facebook/apache/http/conn/ManagedClientConnection;->c()V

    .line 516
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->p:Lcom/facebook/apache/http/auth/AuthState;

    invoke-static {v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/auth/AuthState;)V

    .line 517
    iget-object v6, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->o:Lcom/facebook/apache/http/auth/AuthState;

    invoke-static {v6}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->a(Lcom/facebook/apache/http/auth/AuthState;)V
    :try_end_7
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 558
    :catch_3
    move-exception v1

    .line 559
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->c()V

    .line 560
    throw v1

    .line 546
    :cond_10
    :try_start_8
    invoke-interface {v1}, Lcom/facebook/apache/http/HttpResponse;->b()Lcom/facebook/apache/http/HttpEntity;

    move-result-object v2

    .line 547
    new-instance v3, Lcom/facebook/apache/http/conn/BasicManagedEntity;

    iget-object v5, p0, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->n:Lcom/facebook/apache/http/conn/ManagedClientConnection;

    invoke-direct {v3, v2, v5, v4}, Lcom/facebook/apache/http/conn/BasicManagedEntity;-><init>(Lcom/facebook/apache/http/HttpEntity;Lcom/facebook/apache/http/conn/ManagedClientConnection;Z)V

    .line 548
    invoke-interface {v1, v3}, Lcom/facebook/apache/http/HttpResponse;->a(Lcom/facebook/apache/http/HttpEntity;)V
    :try_end_8
    .catch Lcom/facebook/apache/http/impl/conn/ConnectionShutdownException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/facebook/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 561
    :catch_4
    move-exception v1

    .line 562
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->c()V

    .line 563
    throw v1

    .line 564
    :catch_5
    move-exception v1

    .line 565
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/client/DefaultRequestDirector;->c()V

    .line 566
    throw v1

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :cond_11
    move-object v1, v5

    goto/16 :goto_0
.end method
