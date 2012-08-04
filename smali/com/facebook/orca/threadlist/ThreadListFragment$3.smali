.class Lcom/facebook/orca/threadlist/ThreadListFragment$3;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadListFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/ThreadListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$3;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$3;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/ops/ServiceException;)V

    .line 177
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$3;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;Lcom/facebook/orca/server/OperationResult;)V

    .line 172
    return-void
.end method
