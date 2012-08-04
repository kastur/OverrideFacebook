.class public Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/ProfileListActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;->a:Lcom/facebook/katana/activity/profilelist/ProfileListActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;->a:Lcom/facebook/katana/activity/profilelist/ProfileListActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;->a:Lcom/facebook/katana/activity/profilelist/ProfileListActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/ProfileListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 69
    return-void
.end method
