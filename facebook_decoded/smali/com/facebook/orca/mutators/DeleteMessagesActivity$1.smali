.class Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "DeleteMessagesActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/mutators/DeleteMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/mutators/DeleteMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;->a:Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;->a:Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->a(Lcom/facebook/orca/mutators/DeleteMessagesActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 71
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/mutators/DeleteMessagesActivity$1;->a:Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/mutators/DeleteMessagesActivity;->a(Lcom/facebook/orca/mutators/DeleteMessagesActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 66
    return-void
.end method
