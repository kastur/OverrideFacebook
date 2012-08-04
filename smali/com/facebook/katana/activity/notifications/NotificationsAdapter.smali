.class public Lcom/facebook/katana/activity/notifications/NotificationsAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotificationsAdapter.java"


# instance fields
.field public a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 242
    new-instance v0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    invoke-direct {v0, p1, p3}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    .line 243
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 264
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    const-string v1, "is_read"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    :goto_0
    const-string v1, "sender_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "icon_url"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "title"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "sender_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "updated"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a(Landroid/view/View;Landroid/content/Context;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 273
    return-void

    .line 264
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->a:Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter$NotificationsRenderer;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
