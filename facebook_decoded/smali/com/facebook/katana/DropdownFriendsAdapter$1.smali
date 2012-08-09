.class Lcom/facebook/katana/DropdownFriendsAdapter$1;
.super Landroid/widget/Filter;
.source "DropdownFriendsAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/DropdownFriendsAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->a(Lcom/facebook/katana/DropdownFriendsAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/DropdownFriendsAdapter$FriendsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 86
    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 88
    :cond_0
    return-object v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$1;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/DropdownFriendsAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method
