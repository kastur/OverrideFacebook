.class public Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ClientConnectionManager;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/apache/commons/logging/Log;

.field private b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

.field private c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

.field private d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

.field private e:Lcom/facebook/apache/http/conn/params/ConnPerRouteBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/SchemeRegistryFactory;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    const-wide/16 v0, -0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    .line 93
    return-void
.end method

.method private constructor <init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    .line 118
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    .line 119
    new-instance v0, Lcom/facebook/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lcom/facebook/apache/http/conn/params/ConnPerRouteBean;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcom/facebook/apache/http/conn/params/ConnPerRouteBean;

    .line 120
    invoke-static {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    .line 121
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p4}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    .line 122
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lcom/facebook/apache/commons/logging/Log;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    return-object v0
.end method

.method private static a(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)Lcom/facebook/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .parameter

    .prologue
    .line 194
    new-instance v0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->d:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->e:Lcom/facebook/apache/http/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Shutting down"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->b()V

    .line 310
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lcom/facebook/apache/http/conn/ClientConnectionRequest;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public final a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->b:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    instance-of v0, p1, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    check-cast p1, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 255
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->q()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    monitor-enter p1

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->t()Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 261
    if-nez v1, :cond_2

    .line 262
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_0
    return-void

    .line 277
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->s()Z

    move-result v2

    .line 294
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    if-eqz v2, :cond_5

    .line 296
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 301
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->o()V

    .line 302
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 304
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 298
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is not reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    :try_start_4
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Exception shutting down released connection."

    invoke-interface {v2, v3, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->s()Z

    move-result v2

    .line 294
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    if-eqz v2, :cond_8

    .line 296
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 301
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->o()V

    .line 302
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    goto :goto_2

    .line 298
    :cond_8
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is not reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_3

    .line 293
    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->s()Z

    move-result v2

    .line 294
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    if-eqz v2, :cond_a

    .line 296
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 301
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->o()V

    .line 302
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->c:Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 303
    throw v6

    .line 298
    :cond_a
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->a:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Released connection is not reusable."

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
