.class Lcom/facebook/katana/activity/FacebookActivityDelegate$16;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1738
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 1739
    if-eqz v0, :cond_0

    .line 1741
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;)V

    .line 1742
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1743
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1744
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0352

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1745
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1746
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1747
    iget-object v1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$16;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/activity/FacebookActivityDelegate;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1749
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1751
    :cond_0
    return-void
.end method
