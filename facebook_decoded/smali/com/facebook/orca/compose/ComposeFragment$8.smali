.class Lcom/facebook/orca/compose/ComposeFragment$8;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;
.source "ComposeFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$8;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->h()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 290
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$8;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V

    .line 291
    return-void
.end method
