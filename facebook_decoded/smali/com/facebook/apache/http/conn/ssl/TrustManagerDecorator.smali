.class Lcom/facebook/apache/http/conn/ssl/TrustManagerDecorator;
.super Ljava/lang/Object;
.source "TrustManagerDecorator.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Lcom/facebook/apache/http/conn/ssl/TrustStrategy;


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/TrustManagerDecorator;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/TrustManagerDecorator;->b:Lcom/facebook/apache/http/conn/ssl/TrustStrategy;

    invoke-interface {v0, p1}, Lcom/facebook/apache/http/conn/ssl/TrustStrategy;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/TrustManagerDecorator;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/apache/http/conn/ssl/TrustManagerDecorator;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
