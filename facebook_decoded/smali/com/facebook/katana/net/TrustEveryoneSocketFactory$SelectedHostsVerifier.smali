.class Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;
.super Ljava/lang/Object;
.source "TrustEveryoneSocketFactory.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a:Ljava/util/Set;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 89
    iget-object v3, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->b:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    .line 93
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 99
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->b:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->b:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "SELECTED_HOSTS_VERIFIER"

    return-object v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/katana/net/TrustEveryoneSocketFactory$SelectedHostsVerifier;->b:Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lcom/facebook/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
