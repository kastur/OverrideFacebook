.class Lcom/facebook/orca/ops/OrcaServiceOperation$1;
.super Lcom/facebook/orca/server/ICompletionHandler$Stub;
.source "OrcaServiceOperation.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/server/ICompletionHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation$1;Lcom/facebook/orca/server/OperationResult;)V

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Ljava/lang/Runnable;)V

    .line 524
    :cond_0
    return-void
.end method

.method public final b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    .line 529
    return-void
.end method
