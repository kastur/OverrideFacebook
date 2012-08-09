.class public Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;
.implements Lcom/facebook/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->a:Lcom/facebook/apache/http/conn/scheme/HostNameResolver;

    .line 79
    return-void
.end method

.method public static b()Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 167
    :cond_0
    if-gez p5, :cond_1

    .line 168
    const/4 p5, 0x0

    .line 170
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 173
    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 179
    invoke-virtual {p0, p1, v2, v0, p6}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote address may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-nez p4, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    if-nez p1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->a()Ljava/net/Socket;

    move-result-object p1

    .line 114
    :cond_2
    if-eqz p3, :cond_3

    .line 115
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 116
    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 118
    :cond_3
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->f(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v0

    .line 119
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v1

    .line 122
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 123
    invoke-virtual {p1, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object p1

    .line 125
    :catch_0
    move-exception v0

    new-instance v0, Lcom/facebook/apache/http/conn/ConnectTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 2
    .parameter

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method
