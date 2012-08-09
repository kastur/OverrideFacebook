.class Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;
.super Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;
.source "LayeredSchemeSocketFactoryAdaptor.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lcom/facebook/apache/http/conn/scheme/SocketFactory;)V

    .line 42
    iput-object p1, p0, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/apache/http/conn/scheme/LayeredSchemeSocketFactoryAdaptor;->a:Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/apache/http/conn/scheme/LayeredSocketFactory;->b(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
