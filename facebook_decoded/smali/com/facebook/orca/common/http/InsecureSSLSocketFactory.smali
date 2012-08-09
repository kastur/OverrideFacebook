.class Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;
.super Ljava/lang/Object;
.source "InsecureSSLSocketFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field private static a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private final b:Ljavax/net/ssl/SSLContext;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 48
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory$TrustAnyCertTrustManager;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory$TrustAnyCertTrustManager;-><init>(B)V

    aput-object v1, v0, v2

    .line 60
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->b:Ljavax/net/ssl/SSLContext;

    .line 61
    iget-object v1, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->b:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->b:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 63
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p6, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    if-eqz p1, :cond_5

    move-object v0, p1

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 117
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 120
    :cond_2
    if-gez p5, :cond_3

    .line 121
    const/4 p5, 0x0

    .line 123
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 125
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 128
    :cond_4
    invoke-static {p6}, Lcom/facebook/apache/http/params/HttpConnectionParams;->f(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v1

    .line 129
    invoke-static {p6}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v2

    .line 131
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v0, v3, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 134
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-object v0

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->a()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 141
    :try_start_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_1
    throw v1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 2
    .parameter

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/common/http/InsecureSSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 198
    return-object v0
.end method
