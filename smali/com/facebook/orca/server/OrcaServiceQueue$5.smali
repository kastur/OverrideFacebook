.class Lcom/facebook/orca/server/OrcaServiceQueue$5;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

.field private synthetic b:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 288
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/facebook/orca/server/ErrorCodeUtil;->a(Ljava/lang/Throwable;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->b(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0, v4}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$5;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;J)V

    .line 291
    return-object v4

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
