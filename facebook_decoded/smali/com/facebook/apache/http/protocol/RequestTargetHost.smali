.class public Lcom/facebook/apache/http/protocol/RequestTargetHost;
.super Ljava/lang/Object;
.source "RequestTargetHost.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->b()Lcom/facebook/apache/http/ProtocolVersion;

    move-result-object v3

    .line 65
    invoke-interface {p1}, Lcom/facebook/apache/http/HttpRequest;->g()Lcom/facebook/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/http/RequestLine;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v3, v0}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    const-string v0, "Host"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 73
    if-nez v0, :cond_5

    .line 74
    const-string v1, "http.connection"

    invoke-interface {p2, v1}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/HttpConnection;

    .line 76
    instance-of v2, v1, Lcom/facebook/apache/http/HttpInetConnection;

    if-eqz v2, :cond_4

    move-object v2, v1

    .line 79
    check-cast v2, Lcom/facebook/apache/http/HttpInetConnection;

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpInetConnection;->g()Ljava/net/InetAddress;

    move-result-object v2

    .line 80
    check-cast v1, Lcom/facebook/apache/http/HttpInetConnection;

    invoke-interface {v1}, Lcom/facebook/apache/http/HttpInetConnection;->h()I

    move-result v1

    .line 81
    if-eqz v2, :cond_4

    .line 82
    new-instance v0, Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 85
    :cond_4
    if-nez v0, :cond_5

    .line 86
    sget-object v0, Lcom/facebook/apache/http/HttpVersion;->a:Lcom/facebook/apache/http/HttpVersion;

    invoke-virtual {v3, v0}, Lcom/facebook/apache/http/ProtocolVersion;->a(Lcom/facebook/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lcom/facebook/apache/http/ProtocolException;

    const-string v1, "Target host missing"

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_5
    const-string v1, "Host"

    invoke-virtual {v0}, Lcom/facebook/apache/http/HttpHost;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/facebook/apache/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
