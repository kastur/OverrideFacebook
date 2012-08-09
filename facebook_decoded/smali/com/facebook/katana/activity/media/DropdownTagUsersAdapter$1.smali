.class Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;
.super Landroid/widget/Filter;
.source "DropdownTagUsersAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 86
    :cond_0
    new-instance v1, Lcom/facebook/katana/activity/media/UserHolder;

    invoke-direct {v1}, Lcom/facebook/katana/activity/media/UserHolder;-><init>()V

    .line 87
    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v1, v4, v5}, Lcom/facebook/katana/activity/media/UserHolder;->a(J)V

    .line 88
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/UserHolder;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/UserHolder;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 96
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider;->f:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$FriendsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const-string v1, "user_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 107
    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 109
    const-string v4, "user_image_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 112
    :cond_2
    new-instance v5, Lcom/facebook/katana/activity/media/UserHolder;

    invoke-direct {v5}, Lcom/facebook/katana/activity/media/UserHolder;-><init>()V

    .line 113
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/facebook/katana/activity/media/UserHolder;->a(J)V

    .line 114
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/facebook/katana/activity/media/UserHolder;->a(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/facebook/katana/activity/media/UserHolder;->b(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 121
    :cond_3
    new-instance v0, Lcom/facebook/katana/activity/media/UserHolder;

    invoke-direct {v0}, Lcom/facebook/katana/activity/media/UserHolder;-><init>()V

    .line 122
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/media/UserHolder;->a(J)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/UserHolder;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/media/UserHolder;->b(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v6, Landroid/widget/Filter$FilterResults;->count:I

    .line 130
    iput-object v7, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 132
    return-object v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 141
    iget-object v1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->clear()V

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/UserHolder;

    .line 144
    iget-object v2, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$1;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->notifyDataSetChanged()V

    .line 148
    :cond_1
    return-void
.end method
