.class public Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;
.source "GroupMemberListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->a(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter;->a(Ljava/util/List;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity$GroupMemberListListener;->a:Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;->a(Lcom/facebook/katana/activity/profilelist/GroupMemberListActivity;Z)V

    .line 119
    return-void
.end method
