.class Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OperationResult;

.field private synthetic b:Lcom/facebook/orca/ops/OrcaServiceOperation$1;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation$1;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    iget-object v0, v0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    iget-object v0, v0, Lcom/facebook/orca/ops/OrcaServiceOperation$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$1$1;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    .line 521
    :cond_0
    return-void
.end method
