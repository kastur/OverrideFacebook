.class public Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 457
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->n()V

    .line 458
    iput-object p3, p2, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    .line 459
    return-void
.end method
