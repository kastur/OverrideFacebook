.class public Lcom/facebook/katana/binding/WorkerThread;
.super Ljava/lang/Object;
.source "WorkerThread.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->a:Landroid/os/Handler;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FB4A Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->b:Landroid/os/HandlerThread;

    .line 24
    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/binding/WorkerThread;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->c:Landroid/os/Handler;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/binding/WorkerThread;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 54
    return-void
.end method
