.class Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;
.super Ljava/lang/Object;
.source "StepAddFriendsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/findfriends/FriendCandidate;

    .line 455
    invoke-virtual {v0}, Lcom/facebook/katana/view/findfriends/FriendCandidate;->b()Z

    .line 456
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->e(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)V

    .line 457
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity$2;->a:Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;->b(Lcom/facebook/katana/activity/findfriends/StepAddFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FriendCandidatesAdapter;->notifyDataSetChanged()V

    .line 458
    return-void
.end method
