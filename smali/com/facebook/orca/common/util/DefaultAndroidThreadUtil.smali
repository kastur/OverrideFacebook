.class public Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;
.super Ljava/lang/Object;
.source "DefaultAndroidThreadUtil.java"

# interfaces
.implements Lcom/facebook/orca/common/util/AndroidThreadUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 22
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    invoke-direct {v0, p1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    new-instance v2, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil$1;-><init>(Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;Ljava/lang/Runnable;Landroid/os/HandlerThread;)V

    .line 110
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/facebook/orca/common/util/DefaultAndroidThreadUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    invoke-direct {v0, p1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 86
    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
