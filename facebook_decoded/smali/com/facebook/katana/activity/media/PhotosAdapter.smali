.class public Lcom/facebook/katana/activity/media/PhotosAdapter;
.super Landroid/widget/CursorAdapter;
.source "PhotosAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/katana/binding/AppSession;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 118
    const-string v0, "pid"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a(Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->f:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 134
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 136
    if-eqz v1, :cond_2

    .line 138
    iget-object v2, v0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a(Z)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "thumbnail"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 147
    if-eqz v1, :cond_4

    .line 149
    :try_start_0
    invoke-static {v1}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    iget-object v2, v0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a(Z)V

    .line 154
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->f:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    const-string v2, "PhotosAdapter"

    const-string v3, "cannot decode thumbnail"

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :cond_3
    iget-object v0, v0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v1, "src"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    if-eqz v6, :cond_3

    .line 163
    iget-object v0, v0, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->b:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->c:Ljava/lang/String;

    const-string v4, "object_id"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->d:Ljava/util/Map;

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;

    const v2, 0x7f0801fd

    invoke-direct {v1, p0, v0, v2}, Lcom/facebook/katana/activity/media/PhotosAdapter$ValidViewHolder;-><init>(Lcom/facebook/katana/activity/media/PhotosAdapter;Landroid/view/View;I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosAdapter;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 101
    return-void
.end method
