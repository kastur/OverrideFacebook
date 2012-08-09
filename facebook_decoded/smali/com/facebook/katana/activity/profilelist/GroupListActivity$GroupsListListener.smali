.class public Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;
.source "GroupListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/GroupListActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/profilelist/GroupListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupListActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupListActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/profilelist/GroupListAdapter;->a(Ljava/util/List;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupListActivity$GroupsListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/profilelist/GroupListActivity;->a(Lcom/facebook/katana/activity/profilelist/GroupListActivity;Z)V

    .line 100
    return-void
.end method
