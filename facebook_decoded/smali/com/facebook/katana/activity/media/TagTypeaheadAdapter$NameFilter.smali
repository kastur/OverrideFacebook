.class Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;
.super Landroid/widget/Filter;
.source "TagTypeaheadAdapter.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;-><init>(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;)V

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/facebook/katana/provider/ConnectionsProvider;->d:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$FriendsQuery;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    .line 128
    new-instance v3, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v4, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-direct {v3, v2, v4, v5}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 135
    const-string v2, "user_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 138
    :cond_1
    new-instance v3, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    .line 147
    :cond_2
    return-object v3
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a:Ljava/util/ArrayList;

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_3
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 93
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 82
    :cond_4
    new-instance v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    .line 85
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->setNotifyOnChange(Z)V

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->clear()V

    .line 105
    if-eqz p2, :cond_2

    .line 106
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;

    .line 109
    iget-object v2, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->a(Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;)Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;

    move-result-object v2

    iget-wide v3, v0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$User;->b:J

    invoke-interface {v2, v3, v4}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$UserExclusionFilter;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter$NameFilter;->b:Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/TagTypeaheadAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
