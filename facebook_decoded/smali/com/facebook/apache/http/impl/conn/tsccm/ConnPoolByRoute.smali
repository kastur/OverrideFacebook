.class public Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.super Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final c:Lcom/facebook/apache/commons/logging/Log;

.field private final d:Ljava/util/concurrent/locks/Lock;

.field private e:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

.field private f:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/apache/http/conn/routing/HttpRoute;",
            "Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field private final k:J

.field private final l:Ljava/util/concurrent/TimeUnit;

.field private volatile m:Z

.field private volatile n:I

.field private volatile o:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p2, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connections per route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->a:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    .line 132
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/AbstractConnPool;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->e:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    .line 134
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->f:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

    .line 135
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->n:I

    .line 136
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    .line 137
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    .line 138
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Map;

    .line 139
    iput-wide p4, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->k:J

    .line 140
    iput-object p6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/concurrent/TimeUnit;

    .line 141
    return-void
.end method

.method private a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;Lcom/facebook/apache/http/conn/ClientConnectionOperator;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new connection ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 553
    :cond_0
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    iget-wide v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->k:J

    iget-object v5, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->l:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionOperator;Lcom/facebook/apache/http/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    .line 555
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 558
    iget v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    .line 559
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    return-object v0

    .line 561
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 488
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 491
    const/4 v0, 0x0

    .line 492
    :goto_0
    if-nez v0, :cond_4

    .line 494
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a(Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_3

    .line 497
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v3}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Getting free connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v3}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closing expired free connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 509
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 513
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e()V

    .line 514
    iget v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 529
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 516
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 517
    goto/16 :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No free connections ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 531
    return-object v2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 2
    .parameter

    .prologue
    .line 199
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->f:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

    invoke-direct {v0, p1, v1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/conn/params/ConnPerRoute;)V

    return-object v0
.end method

.method private a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Z)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    .line 240
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 244
    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 254
    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static a(Ljava/util/concurrent/locks/Condition;Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p0, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->c()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 3
    .parameter

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 667
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 668
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying thread waiting on pool ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g()Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v0

    .line 682
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 688
    return-void

    .line 673
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 674
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Notifying thread waiting on any pool"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    goto :goto_0

    .line 678
    :cond_5
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Notifying no-one, there are no waiting threads"

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 4
    .parameter

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting connection ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 593
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Z)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 594
    invoke-virtual {v1, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 595
    iget v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    .line 596
    invoke-virtual {v1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static c()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method private static d()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/apache/http/conn/routing/HttpRoute;",
            "Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->b(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 624
    return-void

    .line 618
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "No free connection to delete"

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 332
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 336
    :cond_0
    const/4 v4, 0x0

    .line 337
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Z)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v3

    .line 341
    const/4 v2, 0x0

    move-object v5, v3

    move-object v10, v2

    move-object v2, v4

    move-object v4, v10

    .line 343
    :goto_0
    if-nez v2, :cond_9

    .line 345
    iget-boolean v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    if-eqz v2, :cond_1

    .line 346
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Connection pool shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 349
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] total kept alive: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", total issued: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", total allocated: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " out of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->n:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 361
    :cond_2
    invoke-direct {p0, v5, p2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2

    .line 362
    if-nez v2, :cond_9

    .line 363
    invoke-virtual {v5}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 368
    :goto_1
    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v6}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 369
    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Available capacity: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 374
    :cond_3
    if-eqz v3, :cond_5

    iget v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    iget v7, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->n:I

    if-ge v6, v7, :cond_5

    .line 376
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->e:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    invoke-direct {p0, v5, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;Lcom/facebook/apache/http/conn/ClientConnectionOperator;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2

    goto/16 :goto_0

    .line 363
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 378
    :cond_5
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 380
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->f()V

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Z)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->e:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    invoke-direct {p0, v2, v3}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;Lcom/facebook/apache/http/conn/ClientConnectionOperator;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v3

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_0

    .line 388
    :cond_6
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v3}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 389
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Need to wait for connection ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 393
    :cond_7
    if-nez v4, :cond_a

    .line 394
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Ljava/util/concurrent/locks/Condition;Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v3

    .line 396
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;->a(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_2
    :try_start_2
    invoke-virtual {v5, v3}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 402
    iget-object v4, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v3, v1}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 410
    :try_start_3
    invoke-virtual {v5, v3}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 411
    iget-object v6, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v6, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 415
    if-nez v4, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_8

    .line 417
    new-instance v1, Lcom/facebook/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v2, "Timeout waiting for connection"

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :catchall_1
    move-exception v1

    invoke-virtual {v5, v3}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 411
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v2, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    move-object v4, v3

    .line 421
    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    .line 424
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 426
    return-object v1

    :cond_a
    move-object v3, v4

    goto :goto_2
.end method

.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 285
    new-instance v1, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Releasing connection ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 440
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 475
    :goto_0
    return-void

    .line 448
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Z)Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 452
    if-eqz p2, :cond_4

    .line 453
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    const-wide/16 v3, 0x0

    cmp-long v0, p3, v3

    if-lez v0, :cond_3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_1
    iget-object v3, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pooling connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]; keep alive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 463
    :cond_2
    invoke-virtual {v2, p1}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 464
    invoke-virtual {p1, p3, p4, p5}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 465
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_2
    invoke-direct {p0, v2}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 458
    :cond_3
    :try_start_2
    const-string v0, "indefinitely"

    goto :goto_1

    .line 467
    :cond_4
    invoke-virtual {v2}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e()V

    .line 468
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->o:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 772
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 774
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 812
    :goto_0
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->m:Z

    .line 780
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 781
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 784
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 811
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 788
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 789
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 793
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v2}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->c:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Closing connection ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 797
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_2

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 802
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 805
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;->a()V

    goto :goto_3

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/ConnPoolByRoute;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method
