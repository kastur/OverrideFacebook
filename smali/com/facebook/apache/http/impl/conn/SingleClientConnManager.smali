.class public Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lcom/facebook/apache/http/conn/ClientConnectionManager;


# annotations
.annotation build Lcom/facebook/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field protected final a:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

.field private final b:Lcom/facebook/apache/commons/logging/Log;

.field private c:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

.field private d:Z

.field private volatile e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile g:J
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile h:J
    .annotation build Lcom/facebook/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/facebook/apache/http/impl/conn/SchemeRegistryFactory;->a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->c:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    .line 124
    invoke-static {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->a(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->a:Lcom/facebook/apache/http/conn/ClientConnectionOperator;

    .line 125
    new-instance v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    .line 128
    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->d:Z

    .line 129
    iput-boolean v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->i:Z

    .line 130
    return-void
.end method

.method private static a(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)Lcom/facebook/apache/http/conn/ClientConnectionOperator;
    .locals 1
    .parameter

    .prologue
    .line 166
    new-instance v0, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b()V

    .line 350
    if-nez p3, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 358
    iget-wide v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 363
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Problem closing idle connection."

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->i:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 342
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 344
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->i:Z

    .line 373
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->o()V

    .line 377
    :cond_0
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 388
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 383
    :try_start_2
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down manager."

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method


# virtual methods
.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lcom/facebook/apache/http/conn/ClientConnectionRequest;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    new-instance v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;Lcom/facebook/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)Lcom/facebook/apache/http/conn/ManagedClientConnection;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b()V

    .line 212
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get connection for route "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 216
    :cond_1
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_2

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 225
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->c()V

    .line 227
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->a:Lcom/facebook/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->c:Lcom/facebook/apache/http/conn/routing/RouteTracker;

    .line 229
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/apache/http/conn/routing/RouteTracker;->h()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    :goto_0
    move v5, v0

    move v0, v1

    move v1, v5

    .line 240
    :goto_1
    if-eqz v1, :cond_7

    .line 243
    :try_start_2
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    :goto_2
    if-eqz v2, :cond_4

    .line 250
    :try_start_3
    new-instance v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 266
    :cond_4
    new-instance v0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->e:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lcom/facebook/apache/http/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 268
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0

    return-object v0

    :cond_5
    move v0, v1

    .line 229
    goto :goto_0

    :cond_6
    move v0, v2

    .line 237
    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "Problem shutting down connection."

    invoke-interface {v1, v3, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_7
    move v2, v0

    goto :goto_2
.end method

.method public final a()Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->c:Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public final a(Lcom/facebook/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 275
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b()V

    .line 277
    instance-of v0, p1, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Releasing connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 287
    :cond_1
    check-cast p1, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 288
    monitor-enter p1

    .line 289
    :try_start_0
    iget-object v0, p1, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->a:Lcom/facebook/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_2

    .line 290
    monitor-exit p1

    .line 336
    :goto_0
    return-void

    .line 291
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->q()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 308
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->s()Z

    move-result v0

    if-nez v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v0}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v1, "Released connection open but not reusable."

    invoke-interface {v0, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 319
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->o()V

    .line 327
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    .line 330
    cmp-long v0, p2, v3

    if-lez v0, :cond_6

    .line 331
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J

    .line 334
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :goto_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 333
    :cond_6
    const-wide v0, 0x7fffffffffffffffL

    :try_start_5
    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 334
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 335
    :catch_0
    move-exception v0

    .line 322
    :try_start_7
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    invoke-interface {v1}, Lcom/facebook/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 323
    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v2, "Exception shutting down released connection."

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 326
    :cond_7
    :try_start_8
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->o()V

    .line 327
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 328
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    .line 330
    cmp-long v0, p2, v3

    if-lez v0, :cond_8

    .line 331
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J

    .line 334
    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit p0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 333
    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :try_start_b
    iput-wide v0, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    .line 335
    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->o()V

    .line 327
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 328
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->f:Lcom/facebook/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    .line 330
    cmp-long v1, p2, v3

    if-lez v1, :cond_9

    .line 331
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->g:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J

    .line 334
    :goto_4
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 333
    :cond_9
    const-wide v1, 0x7fffffffffffffffL

    :try_start_f
    iput-wide v1, p0, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->h:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_4

    .line 334
    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit p0

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/apache/http/impl/conn/SingleClientConnManager;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
