.class public Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# direct methods
.method protected constructor <init>(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->n()V

    .line 52
    return-void
.end method


# virtual methods
.method protected final o()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->o()V

    .line 70
    return-void
.end method

.method protected final q()Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->q()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected final t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/facebook/apache/http/impl/conn/AbstractPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    return-object v0
.end method
