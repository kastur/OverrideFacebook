.class Lcom/facebook/katana/activity/login/RealLoginActivity$4;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->f(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->d(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 426
    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    .line 427
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$4;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    .line 429
    :cond_1
    return-void

    .line 423
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
