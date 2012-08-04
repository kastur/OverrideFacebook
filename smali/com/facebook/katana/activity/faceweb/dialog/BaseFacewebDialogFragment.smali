.class public abstract Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BaseFacewebDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final E()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 14
    instance-of v0, v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/dialog/BaseFacewebDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->h()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
