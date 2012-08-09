.class final Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FriendMultiSelectorActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    .line 234
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 235
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 242
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;IZ)V

    .line 249
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 252
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->b(Landroid/database/Cursor;)V

    .line 256
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->b(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$QueryHandler;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;IZ)V

    goto :goto_0
.end method
