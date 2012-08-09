.class Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;
.super Landroid/app/ProgressDialog;
.source "PlatformDialogActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/PlatformDialogActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/PlatformDialogActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    .line 376
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;->requestWindowFeature(I)Z

    .line 378
    invoke-virtual {p1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;->setMessage(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;->dismiss()V

    .line 387
    iget-object v0, p0, Lcom/facebook/katana/activity/PlatformDialogActivity$PlatformDialogSpinner;->a:Lcom/facebook/katana/activity/PlatformDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/PlatformDialogActivity;->c(Landroid/os/Bundle;)V

    .line 388
    return-void
.end method
