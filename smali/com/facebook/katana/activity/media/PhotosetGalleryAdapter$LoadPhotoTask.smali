.class Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;
.super Landroid/os/AsyncTask;
.source "PhotosetGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:J

.field private synthetic b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Long;)Landroid/util/Pair;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    .line 173
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 174
    iget-wide v3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v2, v3, v4}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_2

    .line 181
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 184
    const/4 v0, 0x1

    .line 188
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 207
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 190
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 195
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-wide v5, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v4, v5, v6}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->a(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPhoto;)Ljava/lang/String;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Ljava/util/Map;

    move-result-object v3

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 202
    :goto_1
    const-string v3, "photoset-gallery"

    const-string v4, "Cannot decode bitmap: OOM"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 204
    :goto_2
    const-string v3, "photoset-gallery"

    const-string v4, "cannot decode image"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 203
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_2

    .line 201
    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_1
.end method

.method private a(Landroid/util/Pair;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)V

    .line 246
    :goto_0
    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->c(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcom/facebook/katana/util/SoftReferenceCache;

    move-result-object v1

    iget-wide v3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/katana/util/SoftReferenceCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->c(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcom/facebook/katana/util/SoftReferenceCache;

    move-result-object v1

    iget-wide v3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/facebook/katana/util/SoftReferenceCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->d(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Ljava/util/HashSet;

    move-result-object v1

    iget-wide v3, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->e(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcustom/android/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Lcustom/android/Gallery;->getChildCount()I

    move-result v3

    .line 227
    :goto_1
    if-ge v2, v3, :cond_3

    .line 228
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->e(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;)Lcustom/android/Gallery;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_4

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;

    .line 234
    iget-wide v4, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->c:J

    iget-wide v6, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 235
    iget-object v2, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->b:Lcom/facebook/katana/ui/ImageViewTouchBase;

    new-instance v3, Lcom/facebook/katana/RotateBitmap;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    .line 237
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$ViewHolder;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)V

    goto/16 :goto_0

    .line 227
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->b:Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;

    iget-wide v2, p0, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a:J

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;->b(Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter;J)V

    throw v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a([Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotosetGalleryAdapter$LoadPhotoTask;->a(Landroid/util/Pair;)V

    return-void
.end method
