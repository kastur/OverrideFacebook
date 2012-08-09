.class public interface abstract Lcom/facebook/apache/http/conn/OperatedClientConnection;
.super Ljava/lang/Object;
.source "OperatedClientConnection.java"

# interfaces
.implements Lcom/facebook/apache/http/HttpClientConnection;
.implements Lcom/facebook/apache/http/HttpInetConnection;


# virtual methods
.method public abstract a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;)V
.end method

.method public abstract a(Ljava/net/Socket;Lcom/facebook/apache/http/HttpHost;ZLcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract a(ZLcom/facebook/apache/http/params/HttpParams;)V
.end method

.method public abstract i()Z
.end method

.method public abstract j()Ljava/net/Socket;
.end method
