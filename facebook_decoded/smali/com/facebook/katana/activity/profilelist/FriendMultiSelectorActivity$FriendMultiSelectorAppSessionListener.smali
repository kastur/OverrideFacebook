.class public Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;
.source "FriendMultiSelectorActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListListener;-><init>(Lcom/facebook/katana/activity/profilelist/ProfileListActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->a(Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;IZ)V

    .line 285
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->o:Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;

    check-cast v0, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;

    .line 290
    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->e()Landroid/database/Cursor;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 293
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/profilelist/SelectableProfileListNaiveCursorAdapter;->b(Landroid/database/Cursor;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    const v2, 0x7f0b01fb

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity$FriendMultiSelectorAppSessionListener;->a:Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
