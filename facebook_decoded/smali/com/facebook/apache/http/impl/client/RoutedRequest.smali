.class public Lcom/facebook/apache/http/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/apache/http/impl/client/RequestWrapper;

.field private b:Lcom/facebook/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/impl/client/RequestWrapper;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a:Lcom/facebook/apache/http/impl/client/RequestWrapper;

    .line 54
    iput-object p2, p0, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/impl/client/RequestWrapper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RoutedRequest;->a:Lcom/facebook/apache/http/impl/client/RequestWrapper;

    return-object v0
.end method

.method public final b()Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/apache/http/impl/client/RoutedRequest;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method
