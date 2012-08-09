.class Lcom/facebook/katana/PageListAdapter$1;
.super Landroid/widget/Filter;
.source "PageListAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/PageListAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/katana/PageListAdapter$1;->a:Lcom/facebook/katana/PageListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 58
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->j:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter$1;->a:Lcom/facebook/katana/PageListAdapter;

    invoke-static {v0}, Lcom/facebook/katana/PageListAdapter;->a(Lcom/facebook/katana/PageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/PageListAdapter$UserPagesQuery;->a:[Ljava/lang/String;

    const-string v5, "connection_type, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    :goto_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 74
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 75
    return-object v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter$1;->a:Lcom/facebook/katana/PageListAdapter;

    invoke-static {v0}, Lcom/facebook/katana/PageListAdapter;->b(Lcom/facebook/katana/PageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->h:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/PageListAdapter$UserPagesQuery;->a:[Ljava/lang/String;

    const-string v5, "connection_type, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 84
    iget-object v1, p0, Lcom/facebook/katana/PageListAdapter$1;->a:Lcom/facebook/katana/PageListAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/PageListAdapter;->b(Landroid/database/Cursor;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter$1;->a:Lcom/facebook/katana/PageListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/PageListAdapter;->i()V

    .line 87
    return-void
.end method
