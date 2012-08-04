.class Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;
.super Ljava/lang/Object;
.source "KeyedAsyncTaskExecutor.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/orca/common/async/KeyedAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

.field private synthetic e:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->e:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->c:Ljava/util/LinkedList;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    .line 40
    iput-object p3, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->b:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;)Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->d:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->c:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->d:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->e:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    iget-object v2, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;-><init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->d:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->d:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
