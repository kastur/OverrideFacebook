.class public Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method private static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/net/Proxy;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;)",
            "Ljava/net/Proxy;"
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy list must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    const/4 v1, 0x0

    .line 272
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 274
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 275
    sget-object v3, Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner$1;->a:[I

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move-object v0, v1

    .line 280
    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 289
    :cond_2
    if-nez v1, :cond_3

    .line 293
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 296
    :cond_3
    return-object v1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpHost;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 191
    .line 192
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    .line 194
    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 206
    invoke-static {v1}, Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner;->a(Ljava/util/List;)Ljava/net/Proxy;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    .line 211
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_2

    .line 212
    new-instance v0, Lcom/facebook/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to handle non-Inet proxy address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Lcom/facebook/apache/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot convert host to URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 217
    new-instance v1, Lcom/facebook/apache/http/HttpHost;

    invoke-static {v0}, Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner;->a(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 170
    :goto_0
    return-object v0

    .line 138
    :cond_1
    if-nez p1, :cond_2

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->c(Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v2

    .line 149
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 150
    if-nez v0, :cond_4

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner;->b(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v0

    .line 159
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/ProxySelectorRoutePlanner;->a:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/facebook/apache/http/conn/scheme/Scheme;->d()Z

    move-result v3

    .line 165
    if-nez v0, :cond_5

    .line 166
    new-instance v0, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-direct {v0, p1, v2, v3}, Lcom/facebook/apache/http/conn/routing/HttpRoute;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    goto :goto_0

    .line 152
    :cond_4
    sget-object v1, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->a:Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    :cond_5
    new-instance v1, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/facebook/apache/http/conn/routing/HttpRoute;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Lcom/facebook/apache/http/HttpHost;Z)V

    move-object v0, v1

    goto :goto_0
.end method
