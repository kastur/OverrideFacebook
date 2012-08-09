.class public Lcom/facebook/katana/PageListAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;
.source "PageListAdapter.java"


# instance fields
.field a:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/activity/profilelist/ProfileListImageCacheAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Landroid/database/Cursor;)V

    .line 51
    new-instance v0, Lcom/facebook/katana/PageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/PageListAdapter$1;-><init>(Lcom/facebook/katana/PageListAdapter;)V

    iput-object v0, p0, Lcom/facebook/katana/PageListAdapter;->a:Landroid/widget/Filter;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/PageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/PageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(II)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 94
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter;->c:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/PageListAdapter;->c(II)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/PageListAdapter;->c:Landroid/database/Cursor;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/katana/PageListAdapter;->c:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/PageListAdapter;->c:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-object v0
.end method

.method protected final a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_ADMIN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter;->e:Landroid/content/Context;

    const v1, 0x7f0b029d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->PAGE_FAN:Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/ConnectionsProvider$ConnectionType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/PageListAdapter;->e:Landroid/content/Context;

    const v1, 0x7f0b029e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
