.class Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;


# instance fields
.field private synthetic a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;

.field private synthetic b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

.field private synthetic c:Ljava/lang/Object;

.field private synthetic d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;


# direct methods
.method constructor <init>(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    iput-object p4, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->b:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->c:Ljava/lang/Object;

    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->a:Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;->d:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v1}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
