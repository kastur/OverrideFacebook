.class public Lcom/facebook/apache/http/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/params/ConnRoutePNames;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final a:Lcom/facebook/apache/http/HttpHost;

.field private static b:Lcom/facebook/apache/http/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/apache/http/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->a:Lcom/facebook/apache/http/HttpHost;

    .line 58
    new-instance v0, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    sget-object v1, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->a:Lcom/facebook/apache/http/HttpHost;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;-><init>(Lcom/facebook/apache/http/HttpHost;)V

    sput-object v0, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/HttpHost;
    .locals 2
    .parameter

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/HttpHost;

    .line 82
    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->a:Lcom/facebook/apache/http/HttpHost;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/4 v0, 0x0

    .line 86
    :cond_1
    return-object v0
.end method

.method public static b(Lcom/facebook/apache/http/params/HttpParams;)Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 2
    .parameter

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/routing/HttpRoute;

    .line 124
    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/apache/http/conn/params/ConnRouteParams;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v0}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const/4 v0, 0x0

    .line 128
    :cond_1
    return-object v0
.end method

.method public static c(Lcom/facebook/apache/http/params/HttpParams;)Ljava/net/InetAddress;
    .locals 2
    .parameter

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, Lcom/facebook/apache/http/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 168
    return-object v0
.end method
