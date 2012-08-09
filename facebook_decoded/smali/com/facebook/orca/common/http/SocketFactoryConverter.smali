.class Lcom/facebook/orca/common/http/SocketFactoryConverter;
.super Ljava/lang/Object;
.source "SocketFactoryConverter.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;
.implements Lcom/facebook/apache/http/conn/scheme/SocketFactory;


# instance fields
.field private final a:Lorg/apache/http/conn/scheme/SocketFactory;


# direct methods
.method constructor <init>(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 26
    return-void
.end method

.method private static a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v6, Lcom/facebook/orca/common/http/HttpParamsConverter;

    invoke-direct {v6, p6}, Lcom/facebook/orca/common/http/HttpParamsConverter;-><init>(Lcom/facebook/apache/http/params/HttpParams;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/common/http/SocketFactoryConverter;->a:Lorg/apache/http/conn/scheme/SocketFactory;

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
