.class Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;
.super Ljava/lang/Object;
.source "StepAddFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const v1, 0x7f0b043a

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const v2, 0x7f08010a

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    const-string v2, "new_android_ci_skip_add_all_dialog"

    invoke-static {v1, v2}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g()V

    .line 262
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->d(I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 247
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(II)V

    .line 248
    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "add_all_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->c(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->d(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    goto :goto_0
.end method
