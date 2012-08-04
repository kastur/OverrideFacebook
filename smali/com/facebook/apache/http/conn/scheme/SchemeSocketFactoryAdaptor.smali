.class Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/conn/scheme/SocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 60
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/facebook/apache/http/conn/scheme/SocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/scheme/SocketFactory;->a(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/scheme/SocketFactory;->a()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    instance-of v0, p1, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    check-cast p1, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object v1, p1, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
