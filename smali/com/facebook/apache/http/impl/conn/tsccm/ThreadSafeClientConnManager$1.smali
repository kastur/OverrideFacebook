.class Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ClientConnectionRequest;


# instance fields
.field private synthetic a:Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;

.field private synthetic b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

.field private synthetic c:Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/conn/ManagedClientConnection;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;->a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;->a()V

    .line 212
    return-void
.end method
