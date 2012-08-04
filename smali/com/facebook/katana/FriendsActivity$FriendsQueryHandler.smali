.class final Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;
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
    .line 79
    iput-object p1, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 81
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

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    .line 95
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b(Landroid/database/Cursor;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->b(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->a(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/FriendsActivity$FriendsAndUserSearchAdapter;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->b(Lcom/facebook/katana/FriendsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    invoke-static {v0}, Lcom/facebook/katana/FriendsActivity;->c(Lcom/facebook/katana/FriendsActivity;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/FriendsActivity$FriendsQueryHandler;->a:Lcom/facebook/katana/FriendsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/FriendsActivity;->a(IZ)V

    goto :goto_0
.end method
