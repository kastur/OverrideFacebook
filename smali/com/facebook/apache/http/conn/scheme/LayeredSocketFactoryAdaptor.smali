.class Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;
.super Lcom/facebook/apache/http/conn/scheme/SocketFactoryAdaptor;
.source "LayeredSocketFactoryAdaptor.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;


# virtual methods
.method public final b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
