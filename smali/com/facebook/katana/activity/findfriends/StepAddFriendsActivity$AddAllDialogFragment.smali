.class Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "StepAddFriendsActivity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static d(I)Landroid/support/v4/app/DialogFragment;
    .locals 3
    .parameter

    .prologue
    .line 281
    new-instance v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;-><init>()V

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    const-string v2, "add_all_friend_count"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->e(Landroid/os/Bundle;)V

    .line 285
    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    .line 292
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "add_all_friend_count"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 294
    if-gtz v2, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting a positive number of candidates to add as friends"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    new-instance v5, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    .line 310
    new-instance v8, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$2;

    invoke-direct {v8, p0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$2;-><init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;)V

    .line 319
    if-le v2, v9, :cond_1

    .line 321
    const v3, 0x7f0b0467

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 327
    :goto_0
    const v2, 0x1080027

    const v4, 0x7f0b0468

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v1

    move-object v7, v1

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 324
    :cond_1
    const v2, 0x7f0b0466

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
