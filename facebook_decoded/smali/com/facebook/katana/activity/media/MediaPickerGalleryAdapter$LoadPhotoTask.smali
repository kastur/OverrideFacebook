.class Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;
.super Landroid/os/AsyncTask;
.source "MediaPickerGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Lcom/facebook/katana/model/MediaItem;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Landroid/util/Pair;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/katana/model/MediaItem;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 96
    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    iget-object v5, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-static {v5}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->b(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->a(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    :goto_0
    if-eqz v2, :cond_1

    .line 107
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 109
    :goto_1
    return-object v0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    invoke-virtual {v2}, Lcom/facebook/katana/util/ImageUtils$ImageException;->printStackTrace()V

    .line 103
    const-string v3, "MediaPickerGalleryAdapter"

    const-string v4, "ImageException"

    invoke-static {v3, v4, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 109
    goto :goto_1
.end method

.method private a(Landroid/util/Pair;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/katana/model/MediaItem;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 133
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    .line 120
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a:Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;->c(Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter;)Landroid/widget/AdapterView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    const v0, 0x7f08014b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ImageViewTouchBase;

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/MediaItem;

    .line 128
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 129
    new-instance v5, Lcom/facebook/katana/RotateBitmap;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lcom/facebook/katana/model/MediaItem;->f()I

    move-result v1

    invoke-direct {v5, v2, v1}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v5, v1}, Lcom/facebook/katana/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    .line 120
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a([Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/MediaPickerGalleryAdapter$LoadPhotoTask;->a(Landroid/util/Pair;)V

    return-void
.end method
