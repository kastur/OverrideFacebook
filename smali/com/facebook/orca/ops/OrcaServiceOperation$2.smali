.class Lcom/facebook/orca/ops/OrcaServiceOperation$2;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OperationResult;

.field private synthetic b:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$2;->a:Lcom/facebook/orca/server/OperationResult;

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V

    .line 553
    :cond_0
    return-void
.end method
