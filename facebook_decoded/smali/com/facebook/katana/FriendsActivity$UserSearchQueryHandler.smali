.class public final Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FriendsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/FriendsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/FriendsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 137
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$UserSearchQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->a_(Landroid/database/Cursor;)V

    goto :goto_0
.end method
