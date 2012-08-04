.class public Lcom/facebook/katana/net/TrustEveryoneSocketFactory;
.super Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;
.source "TrustEveryoneSocketFactory.java"


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

.field private static d:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "beta.facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "latest.facebook.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->b:[Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;

    sget-object v1, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->b:[Ljava/lang/String;

    sget-object v2, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->a:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;-><init>([Ljava/lang/String;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V

    sput-object v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->c:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 33
    new-instance v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$1;

    invoke-direct {v0}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->d:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLContext;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 73
    return-void
.end method

.method public static d()Lcom/facebook/apache/http/conn/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 58
    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->d:Ljavax/net/ssl/TrustManager;

    aput-object v5, v3, v4

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 60
    new-instance v0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;

    sget-object v3, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;->c:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v2, v3}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
