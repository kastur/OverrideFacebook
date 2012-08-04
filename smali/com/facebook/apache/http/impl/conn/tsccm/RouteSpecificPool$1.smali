.class Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool$1;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/params/ConnPerRoute;


# instance fields
.field private synthetic a:Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;


# virtual methods
.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget v0, v0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a:I

    return v0
.end method
