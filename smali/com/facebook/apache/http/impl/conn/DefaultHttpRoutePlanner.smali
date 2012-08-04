.class public Lcom/facebook/apache/http/impl/conn/DefaultHttpRoutePlanner;
.super Ljava/lang/Object;
.source "DefaultHttpRoutePlanner.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/routing/HttpRoutePlanner;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SchemeRegistry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/DefaultHttpRoutePlanner;->a:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/HttpHost;Lcom/facebook/apache/http/HttpRequest;Lcom/facebook/apache/http/protocol/HttpContext;)Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 126
    :goto_0
    return-object v0

    .line 101
    :cond_1
    if-nez p1, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->c(Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/InetAddress;

    move-result-object v1

    .line 108
    invoke-interface {p2}, Lcom/facebook/apache/http/HttpRequest;->f()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->a(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/HttpHost;

    move-result-object v2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/DefaultHttpRoutePlanner;->a:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p1}, Lcom/facebook/apache/http/HttpHost;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/scheme/Scheme;->d()Z

    move-result v3

    .line 121
    if-nez v2, :cond_3

    .line 122
    new-instance v0, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-direct {v0, p1, v1, v3}, Lcom/facebook/apache/http/conn/routing/HttpRoute;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Z)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lcom/facebook/apache/http/HttpException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_3
    new-instance v0, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/apache/http/conn/routing/HttpRoute;-><init>(Lcom/facebook/apache/http/HttpHost;Ljava/net/InetAddress;Lcom/facebook/apache/http/HttpHost;Z)V

    goto :goto_0
.end method
