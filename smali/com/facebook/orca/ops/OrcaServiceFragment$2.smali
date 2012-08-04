.class Lcom/facebook/orca/ops/OrcaServiceFragment$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
.source "OrcaServiceFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/ops/OrcaServiceFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/ops/OrcaServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$2;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$2;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceFragment$2;->a:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b(Lcom/facebook/orca/ops/OrcaServiceFragment;)Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 61
    :cond_0
    return-void
.end method
