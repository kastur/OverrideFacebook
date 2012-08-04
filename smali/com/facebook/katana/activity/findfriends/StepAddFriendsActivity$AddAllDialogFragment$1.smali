.class Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;
.super Ljava/lang/Object;
.source "StepAddFriendsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

.field private synthetic b:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;->b:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;

    iput-object p2, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->g()V

    .line 306
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment$1;->b:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$AddAllDialogFragment;->a()V

    .line 307
    return-void
.end method
