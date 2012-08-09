.class Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;
.super Landroid/os/AsyncTask;
.source "PhotoSetGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;-><init>(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 117
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v4

    .line 118
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v5, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-virtual {v5}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPhoto;)Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->b(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->c(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Lcom/facebook/katana/util/BitmapCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/BitmapCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 129
    if-nez v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->c(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;)Lcom/facebook/katana/util/BitmapCache;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/facebook/katana/util/BitmapCache;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageDecodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v1, "photoset-grid"

    const-string v4, "Cannot decode bitmap: OOM"

    invoke-static {v1, v4, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    const-string v1, "photoset-grid"

    const-string v4, "cannot decode image"

    invoke-static {v1, v4, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    :cond_2
    return-object v2
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a:Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v5, v0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;JLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter$LoadPhotos;->a(Ljava/util/Map;)V

    return-void
.end method
