.class public abstract Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lcom/facebook/apache/http/impl/conn/tsccm/RefQueueHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/locks/Lock;

.field protected b:Ljava/util/Set;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "poolLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/apache/commons/logging/Log;

.field private volatile d:Z

.field private e:Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->c:Lcom/facebook/apache/commons/logging/Log;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/Set;

    .line 92
    new-instance v0, Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->e:Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;

    .line 93
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    .line 94
    return-void
.end method

.method private a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 226
    :try_start_0
    invoke-interface {p1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->c:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 148
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->c()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a(Lcom/facebook/apache/http/conn/OperatedClientConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 208
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->e:Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/IdleConnectionHandler;->a()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
