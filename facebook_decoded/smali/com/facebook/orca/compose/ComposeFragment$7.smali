.class Lcom/facebook/orca/compose/ComposeFragment$7;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "ComposeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$7;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$7;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 278
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$7;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V

    .line 279
    return-void
.end method
