.class public Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;
.source "FindFriendsActivity.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContactUser;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Ljava/util/List;)Ljava/util/List;

    .line 477
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g()V

    .line 485
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/findfriends/FriendsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->g(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/FriendsAdapter;->a(Ljava/util/List;)V

    .line 482
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f()V

    .line 483
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->h(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->i()V

    goto :goto_0
.end method

.method public final c(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->a(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 465
    iget-object v0, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->c(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Lcom/facebook/katana/activity/findfriends/InvitesAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;->f(Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/findfriends/InvitesAdapter;->a(Ljava/util/List;)V

    .line 468
    return-void
.end method
