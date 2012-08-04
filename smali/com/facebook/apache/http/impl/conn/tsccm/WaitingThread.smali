.class public Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;
.super Ljava/lang/Object;
.source "WaitingThread.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Condition;

.field private b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Condition must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nobody waiting on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 188
    return-void
.end method

.method public final a(Ljava/util/Date;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A thread is already waiting on this object.\ncaller: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nwaiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->c:Z

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    .line 155
    if-eqz p1, :cond_2

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    .line 161
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->c:Z

    if-eqz v1, :cond_3

    .line 162
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    throw v0

    .line 158
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_3
    iput-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->b:Ljava/lang/Thread;

    .line 166
    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->c:Z

    .line 192
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 193
    return-void
.end method
