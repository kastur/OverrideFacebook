.class Lcom/facebook/orca/threadview/ThreadViewActivity$5;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ThreadViewActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/ops/ServiceException;)V

    .line 332
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$5;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->c(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/server/OperationResult;)V

    .line 327
    return-void
.end method
