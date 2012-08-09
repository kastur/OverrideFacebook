.class Lcom/facebook/katana/ComposerActivity$3$2;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity$3;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$3$2;->a:Lcom/facebook/katana/ComposerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$3$2;->a:Lcom/facebook/katana/ComposerActivity$3;

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$3$2;->a:Lcom/facebook/katana/ComposerActivity$3;

    iget-object v1, v1, Lcom/facebook/katana/ComposerActivity$3;->a:Lcom/facebook/katana/ComposerActivity;

    const/16 v2, 0x7b

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 742
    return-void
.end method
