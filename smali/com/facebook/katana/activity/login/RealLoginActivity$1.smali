.class Lcom/facebook/katana/activity/login/RealLoginActivity$1;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 349
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 351
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    .line 353
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    sget-object v1, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;->LOGIN_APPROVALS_CODE_ENTRY:Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V

    .line 363
    :cond_1
    :goto_0
    return v2

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->d(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$1;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    sget-object v1, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;->PASSWORD_ENTRY:Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Lcom/facebook/katana/activity/login/RealLoginActivity$LoginState;)V

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {v2}, Lcom/facebook/katana/util/Assert;->b(Z)V

    goto :goto_0
.end method
