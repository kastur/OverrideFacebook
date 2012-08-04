.class public Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "FriendFinderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "new_android_ci_vs_old"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/app/Activity;)V

    .line 26
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;->finish()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->e(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->d(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/findfriends/FriendFinderActivity;->finish()V

    .line 50
    return-void
.end method
