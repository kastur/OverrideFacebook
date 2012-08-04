.class public Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private final b:Ljavax/net/ssl/SSLSocketFactory;

.field private final c:Lcom/facebook/apache/http/conn/scheme/HostNameResolver;

.field private volatile d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 152
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 155
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 334
    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    sget-object v0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 328
    iput-object p2, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->c:Lcom/facebook/apache/http/conn/scheme/HostNameResolver;

    .line 330
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcom/facebook/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 181
    if-nez p0, :cond_0

    .line 182
    const-string p0, "TLS"

    .line 184
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v3, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 187
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 188
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 191
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 192
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 203
    invoke-virtual {v2, v0, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 204
    return-object v2
.end method

.method public static b()Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;-><init>()V

    return-object v0
.end method

.method private static d()Ljavax/net/ssl/SSLContext;
    .locals 6

    .prologue
    .line 209
    :try_start_0
    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->a(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcom/facebook/apache/http/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure initializing default SSL context"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/net/Socket;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    if-nez p4, :cond_0

    if-lez p5, :cond_2

    .line 483
    :cond_0
    if-gez p5, :cond_1

    .line 484
    const/4 p5, 0x0

    .line 486
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 489
    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 494
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 495
    invoke-virtual {p0, p1, v2, v0, p6}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 452
    iget-object v1, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 456
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote address may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    if-nez p4, :cond_1

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    if-eqz p1, :cond_5

    move-object v0, p1

    .line 365
    :goto_0
    if-eqz p3, :cond_2

    .line 366
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 367
    invoke-virtual {v0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 370
    :cond_2
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->f(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v1

    .line 371
    invoke-static {p4}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;)I

    move-result v2

    .line 374
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 375
    invoke-virtual {v0, p2, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 385
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 390
    :cond_3
    instance-of v3, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_6

    .line 391
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 395
    :goto_1
    iget-object v2, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    if-eqz v2, :cond_4

    .line 397
    :try_start_1
    iget-object v2, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->d:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v2, v1, v0}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    :cond_4
    return-object v0

    .line 364
    :cond_5
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    .line 377
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

    .line 393
    :cond_6
    iget-object v3, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    goto :goto_1

    .line 399
    :catch_1
    move-exception v1

    .line 401
    :try_start_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 402
    :goto_2
    throw v1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/net/Socket;)Z
    .locals 2
    .parameter

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
