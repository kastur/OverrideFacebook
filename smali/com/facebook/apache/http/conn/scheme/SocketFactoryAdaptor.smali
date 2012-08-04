.class Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SocketFactoryAdaptor.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lcom/facebook/apache/http/params/BasicHttpParams;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->c()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 63
    :cond_0
    if-gez p5, :cond_1

    .line 64
    const/4 p5, 0x0

    .line 66
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 70
    iget-object v1, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v1, p1, v2, v0, p6}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;->a(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 83
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    instance-of v0, p1, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    check-cast p1, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;

    iget-object v1, p1, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
