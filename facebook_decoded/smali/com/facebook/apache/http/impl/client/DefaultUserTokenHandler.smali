.class public Lcom/facebook/apache/http/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lcom/facebook/apache/http/client/UserTokenHandler;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/apache/http/auth/AuthState;)Ljava/security/Principal;
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->c()Lcom/facebook/apache/http/auth/AuthScheme;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/apache/http/auth/AuthScheme;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/facebook/apache/http/auth/AuthScheme;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/apache/http/auth/AuthState;->d()Lcom/facebook/apache/http/auth/Credentials;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/facebook/apache/http/auth/Credentials;->a()Ljava/security/Principal;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    const-string v0, "http.auth.target-scope"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/auth/AuthState;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/facebook/apache/http/impl/client/DefaultUserTokenHandler;->a(Lcom/facebook/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    const-string v0, "http.auth.proxy-scope"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/auth/AuthState;

    .line 72
    invoke-static {v0}, Lcom/facebook/apache/http/impl/client/DefaultUserTokenHandler;->a(Lcom/facebook/apache/http/auth/AuthState;)Ljava/security/Principal;

    move-result-object v1

    .line 76
    :cond_0
    if-nez v1, :cond_1

    .line 77
    const-string v0, "http.connection"

    invoke-interface {p1, v0}, Lcom/facebook/apache/http/protocol/HttpContext;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/HttpRoutedConnection;

    .line 79
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/HttpRoutedConnection;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/HttpRoutedConnection;->m()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
