.class public Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "KeyedAsyncTaskExecutor.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->g()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/facebook/orca/common/async/KeyedAsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedAsyncTask;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/orca/common/async/KeyedAsyncTask;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v1, "orca:KeyedAsyncTaskExecutor"

    const-string v2, "Execute must be called on the UI thread"

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Execute must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    .line 125
    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-direct {v0, p0, p0, p1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;-><init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const-string v1, "orca:KeyedAsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already contains a task for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a()V

    .line 137
    return-void
.end method
