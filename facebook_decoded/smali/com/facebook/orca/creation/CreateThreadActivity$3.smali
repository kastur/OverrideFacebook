.class Lcom/facebook/orca/creation/CreateThreadActivity$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "CreateThreadActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/creation/CreateThreadActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/creation/CreateThreadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/orca/creation/CreateThreadActivity$3;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$3;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 155
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/creation/CreateThreadActivity$3;->a:Lcom/facebook/orca/creation/CreateThreadActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/creation/CreateThreadActivity;->b(Lcom/facebook/orca/creation/CreateThreadActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 150
    return-void
.end method
