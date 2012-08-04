.class public Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
.super Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;)V
    .locals 2
    .parameter

    .prologue
    .line 420
    iget-object v0, p1, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->a:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    .line 422
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->b()V

    .line 429
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->c()V

    .line 431
    :cond_0
    return-void
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->b()V

    .line 438
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->f()V

    .line 440
    :cond_0
    return-void
.end method
