.class Lcom/facebook/orca/server/OrcaServiceQueue$1;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;->a(Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Landroid/os/Handler;)Landroid/os/Handler;

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->c(Lcom/facebook/orca/server/OrcaServiceQueue;)Lcom/facebook/orca/server/OrcaServiceQueueManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$1;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/OrcaServiceQueueManager;->b(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    .line 131
    return-void
.end method
