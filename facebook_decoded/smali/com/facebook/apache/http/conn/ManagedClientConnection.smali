.class public interface abstract Lcom/facebook/apache/http/conn/ManagedClientConnection;
.super Ljava/lang/Object;
.source "ManagedClientConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpClientConnection;
.implements Lcom/facebook/apache/http/conn/ConnectionReleaseTrigger;
.implements Lcom/facebook/apache/http/conn/HttpRoutedConnection;


# virtual methods
.method public abstract a(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract a(Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract a(Lcom/facebook/apache/http/protocol/HttpContext;Lcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(ZLcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract l()Lcom/facebook/apache/http/conn/routing/HttpRoute;
.end method

.method public abstract n()V
.end method
