.class final Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private synthetic e:Landroid/support/v4/content/AsyncTaskLoader;


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->e:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private varargs c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->e:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->c:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->c:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->e:Landroid/support/v4/content/AsyncTaskLoader;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->a(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->e:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->b(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->a:Z

    .line 80
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->e:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->c()V

    .line 81
    return-void
.end method
