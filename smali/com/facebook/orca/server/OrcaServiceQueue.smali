.class public Lcom/facebook/orca/server/OrcaServiceQueue;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/inject/ContextScope;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/orca/server/OrcaServiceHandler;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/server/Operation;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile j:Z

.field private k:Landroid/os/HandlerThread;

.field private l:Landroid/os/Handler;

.field private m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;Ljava/util/Set;Lcom/facebook/orca/server/OrcaServiceQueueManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/inject/ContextScope;",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/server/OrcaServiceHandler;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceQueueHook;",
            ">;",
            "Lcom/facebook/orca/server/OrcaServiceQueueManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 93
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    .line 96
    iput-object p3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Lcom/facebook/orca/server/OrcaServiceHandler;

    .line 98
    iput-object p5, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    .line 99
    iput-object p6, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    .line 100
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string v1, "originalExceptionMessage"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "originalExceptionStack"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    instance-of v1, p0, Lcom/facebook/orca/common/base/ExceptionWithExtraData;

    if-eqz v1, :cond_0

    .line 236
    check-cast p0, Lcom/facebook/orca/common/base/ExceptionWithExtraData;

    .line 237
    const-string v1, "result"

    invoke-interface {p0}, Lcom/facebook/orca/common/base/ExceptionWithExtraData;->a()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$3;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)Lcom/facebook/orca/common/async/Deferred;

    .line 273
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 274
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$4;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 284
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$5;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 294
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)Lcom/facebook/orca/server/OperationResult;

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->d(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :try_start_1
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0

    .line 315
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ICompletionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :try_start_1
    invoke-interface {v0, p2}, Lcom/facebook/orca/server/ICompletionHandler;->a(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueueManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->m:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    if-nez v0, :cond_1

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 179
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->e()V

    .line 229
    return-void

    .line 183
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 184
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 185
    if-nez v1, :cond_3

    .line 186
    const-string v0, "orca:OrcaServiceQueue"

    const-string v1, "No holder for queued operation!"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    monitor-exit p0

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;J)J

    .line 190
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OrcaService ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v4, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 196
    :try_start_3
    iget-boolean v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-eqz v3, :cond_5

    .line 198
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Queue stopped"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    :try_start_4
    const-string v3, "orca:OrcaServiceQueue"

    const-string v4, "Exception during service"

    invoke-static {v3, v4, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    invoke-static {v0}, Lcom/facebook/orca/server/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Ljava/lang/Throwable;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 220
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const-string v0, "orca:OrcaServiceQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread trace:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_4
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto/16 :goto_0

    .line 201
    :cond_5
    :try_start_5
    new-instance v3, Lcom/facebook/orca/server/OperationParams;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->b(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->d:Lcom/facebook/orca/server/OrcaServiceHandler;

    invoke-interface {v0, v3}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 205
    instance-of v3, v0, Lcom/facebook/orca/server/DeferredOperationResult;

    if-eqz v3, :cond_7

    .line 206
    check-cast v0, Lcom/facebook/orca/server/DeferredOperationResult;

    .line 208
    invoke-virtual {v0}, Lcom/facebook/orca/server/DeferredOperationResult;->a()Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/common/async/Deferred;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 220
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    const-string v0, "orca:OrcaServiceQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread trace:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_6
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto/16 :goto_0

    .line 210
    :cond_7
    :try_start_6
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 218
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->b:Lcom/facebook/orca/inject/ContextScope;

    iget-object v3, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v2, v7, v8}, Lcom/facebook/orca/debug/Tracer;->b(J)V

    .line 220
    invoke-static {v6}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 221
    const-string v1, "orca:OrcaServiceQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thread trace:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_8
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    throw v0
.end method

.method static synthetic d(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/server/OrcaServiceQueue;->d()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 9

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 248
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/Operation;

    .line 250
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 251
    if-nez v1, :cond_0

    .line 252
    const-string v5, "orca:OrcaServiceQueue"

    const-string v6, "No holder for recently completed operation!"

    invoke-static {v5, v6}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 255
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->c(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 265
    const-wide/16 v0, 0x3a98

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/String;

    return-object v0
.end method

.method final a(Lcom/facebook/orca/server/Operation;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot add an operation after queue was stopped"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    new-instance v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {v0, p1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;-><init>(Lcom/facebook/orca/server/Operation;)V

    .line 144
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/server/OrcaServiceQueue$2;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OrcaServiceProgressCallback;)Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/server/Operation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    .line 154
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceQueueHook;->a()V

    goto :goto_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(J)V

    .line 157
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 348
    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    monitor-exit p0

    .line 369
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 354
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->f(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 358
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-eqz v0, :cond_1

    .line 363
    :try_start_1
    invoke-interface {p2, v0}, Lcom/facebook/orca/server/ICompletionHandler;->b(Lcom/facebook/orca/server/OperationResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->e(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method final b()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Queue cannot be started after stopped"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrcaServiceQueue - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->f:Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    .line 113
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->l:Landroid/os/Handler;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue;->j:Z

    .line 119
    new-instance v1, Lcom/facebook/orca/server/OrcaServiceQueue$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/server/OrcaServiceQueue$1;-><init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_0
    return-void
.end method
