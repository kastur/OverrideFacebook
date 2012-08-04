.class Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;
.super Landroid/os/AsyncTask;
.source "VaultSyncStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/facebook/katana/model/MediaItem;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->a:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method

.method private static varargs a([Lcom/facebook/katana/model/MediaItem;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .line 200
    invoke-virtual {v1}, Lcom/facebook/katana/model/MediaItem;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    const/16 v3, 0x96

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    invoke-virtual {v1}, Lcom/facebook/katana/util/ImageUtils$ImageException;->printStackTrace()V

    .line 205
    const-string v2, "vault_sync_status"

    const-string v3, "ImageException"

    invoke-static {v2, v3, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 p1, 0x0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 219
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    :cond_1
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 189
    check-cast p1, [Lcom/facebook/katana/model/MediaItem;

    invoke-static {p1}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->a([Lcom/facebook/katana/model/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
