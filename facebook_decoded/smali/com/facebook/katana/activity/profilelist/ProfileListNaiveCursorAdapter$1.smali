.class Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;
.super Landroid/widget/Filter;
.source "ProfileListNaiveCursorAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;->a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 53
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;->a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$FriendsQuery;->a:[Ljava/lang/String;

    const-string v3, "display_name IS NOT NULL AND LENGTH(display_name) > 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    :goto_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 71
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 72
    return-object v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;->a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;

    iget-object v0, v0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$FriendsQuery;->a:[Ljava/lang/String;

    const-string v3, "display_name IS NOT NULL AND LENGTH(display_name) > 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 81
    iget-object v1, p0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;->a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->b(Landroid/database/Cursor;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter$1;->a:Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListNaiveCursorAdapter;->i()V

    .line 84
    return-void
.end method
