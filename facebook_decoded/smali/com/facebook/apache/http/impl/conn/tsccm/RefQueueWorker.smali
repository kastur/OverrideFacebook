.class public Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;
.super Ljava/lang/Object;
.source "RefQueueWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueHandler;

.field private volatile c:Ljava/lang/Thread;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->c:Ljava/lang/Thread;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->c:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 95
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->b:Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueHandler;

    invoke-interface {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueHandler;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RefQueueWorker::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueWorker;->c:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
