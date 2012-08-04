.class Lcom/facebook/orca/compose/ComposeFragment$10;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->b:Lcom/facebook/orca/compose/ComposeFragment;

    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment$10;->b:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/content/Intent;)V

    .line 692
    return-void
.end method
