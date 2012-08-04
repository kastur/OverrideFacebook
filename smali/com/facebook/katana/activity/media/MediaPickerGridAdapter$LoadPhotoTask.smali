.class Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;
.super Landroid/os/AsyncTask;
.source "MediaPickerGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Landroid/util/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 181
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 182
    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v4

    .line 186
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)I

    move-result v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)I

    move-result v3

    invoke-static {v4, v1, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 194
    :goto_0
    if-eqz v3, :cond_1

    .line 195
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {v3, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    iget-object v5, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-static {v5}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->b(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;)Lcom/facebook/katana/activity/media/JpegCache;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v5, v4, v1}, Lcom/facebook/katana/activity/media/JpegCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 205
    :goto_1
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Lcom/facebook/katana/util/ImageUtils;->a(Landroid/net/Uri;Landroid/content/ContentResolver;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException;->printStackTrace()V

    :cond_1
    :goto_2
    move-object v0, v2

    .line 205
    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    invoke-virtual {v0}, Lcom/facebook/katana/util/ImageUtils$ImageDecodeException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method private a(Landroid/util/Pair;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 215
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 217
    iget-object v3, p0, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;

    invoke-static {v3, v1, v2}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGridAdapter;J)Landroid/view/View;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/view/vault/GridItemController;

    .line 220
    invoke-virtual {v1, v0}, Lcom/facebook/katana/view/vault/GridItemController;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a([Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGridAdapter$LoadPhotoTask;->a(Landroid/util/Pair;)V

    return-void
.end method
