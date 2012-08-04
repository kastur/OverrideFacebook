.class Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;
.super Landroid/os/AsyncTask;
.source "KeyedAsyncTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/facebook/orca/common/async/KeyedAsyncTask;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    .line 69
    iput-object p3, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v3, 0x3

    const-wide/16 v4, 0x32

    .line 81
    invoke-static {v4, v5}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Async Task "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v1}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v1}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v0

    .line 92
    invoke-static {v3}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 94
    const-string v0, "orca:KeyedAsyncTaskExecutor"

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

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v1

    .line 92
    invoke-static {v3}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    .line 94
    const-string v1, "orca:KeyedAsyncTaskExecutor"

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

    .line 97
    :cond_2
    throw v0
.end method

.method private a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;)Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->e()V

    .line 105
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a()V

    .line 106
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->a:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedAsyncTask;

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$WrapperTask;->c:Lcom/facebook/orca/common/async/KeyedAsyncTask;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->c()V

    .line 77
    return-void
.end method
