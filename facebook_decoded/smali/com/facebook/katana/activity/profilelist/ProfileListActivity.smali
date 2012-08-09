.class public abstract Lcom/facebook/katana/activity/profilelist/ProfileListActivity;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.source "ProfileListActivity.java"


# instance fields
.field protected o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 115
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 116
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onResume()V

    .line 89
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 95
    :cond_0
    return-void
.end method
