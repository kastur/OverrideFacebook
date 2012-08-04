.class Lcom/facebook/orca/mutators/DeleteThreadActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "DeleteThreadActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/mutators/DeleteThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mutators/DeleteThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity$1;->a:Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity$1;->a:Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->a(Lcom/facebook/orca/mutators/DeleteThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteThreadActivity$1;->a:Lcom/facebook/orca/mutators/DeleteThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/mutators/DeleteThreadActivity;->a(Lcom/facebook/orca/mutators/DeleteThreadActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 72
    return-void
.end method
