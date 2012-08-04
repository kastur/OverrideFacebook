.class public Lcom/facebook/katana/PageSearchResultsAdapter;
.super Lcom/facebook/katana/ProfileSearchResultsAdapter;
.source "PageSearchResultsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/katana/ProfileSearchResultsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/PageSearchResultsAdapter;->c(II)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 60
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->c:Landroid/database/Cursor;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->d:Ljava/util/List;

    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    iget-object v2, p0, Lcom/facebook/katana/PageSearchResultsAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b029c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lcom/facebook/katana/PageSearchResultsAdapter;->i()V

    goto :goto_0
.end method
