.class public Lcom/facebook/orca/camera/CropImage;
.super Lcom/facebook/orca/camera/MonitoredActivity;
.source "CropImage.java"


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/facebook/orca/camera/HighlightView;

.field d:Ljava/lang/Runnable;

.field private e:Landroid/graphics/Bitmap$CompressFormat;

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Landroid/os/Handler;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/facebook/orca/camera/CropImageView;

.field private r:Landroid/content/ContentResolver;

.field private s:Landroid/graphics/Bitmap;

.field private t:Lcom/facebook/orca/camera/gallery/IImageList;

.field private u:Lcom/facebook/orca/camera/gallery/IImage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/camera/MonitoredActivity;-><init>()V

    .line 61
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    .line 64
    iput-boolean v1, p0, Lcom/facebook/orca/camera/CropImage;->g:Z

    .line 66
    iput-boolean v2, p0, Lcom/facebook/orca/camera/CropImage;->j:Z

    .line 67
    iput-boolean v1, p0, Lcom/facebook/orca/camera/CropImage;->k:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->l:Landroid/os/Handler;

    .line 74
    iput-boolean v2, p0, Lcom/facebook/orca/camera/CropImage;->p:Z

    .line 414
    new-instance v0, Lcom/facebook/orca/camera/CropImage$6;

    invoke-direct {v0, p0}, Lcom/facebook/orca/camera/CropImage$6;-><init>(Lcom/facebook/orca/camera/CropImage;)V

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->image_crop_running_face_detection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/camera/CropImage$3;

    invoke-direct {v2, p0}, Lcom/facebook/orca/camera/CropImage$3;-><init>(Lcom/facebook/orca/camera/CropImage;)V

    iget-object v3, p0, Lcom/facebook/orca/camera/CropImage;->l:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/orca/camera/Util;->a(Lcom/facebook/orca/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 321
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->r:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    .line 334
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/facebook/orca/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->l:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/camera/CropImage$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/camera/CropImage$5;-><init>(Lcom/facebook/orca/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->finish()V

    .line 399
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    :try_start_1
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot open file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/orca/camera/Util;->a(Ljava/io/Closeable;)V

    throw v0

    .line 337
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/orca/camera/CropImage;->g:Z

    if-eqz v1, :cond_2

    .line 339
    :try_start_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 346
    :cond_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string v1, "rect"

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v2}, Lcom/facebook/orca/camera/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/facebook/orca/camera/gallery/IImage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 359
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 363
    if-eqz v0, :cond_3

    move v0, v6

    .line 364
    goto :goto_2

    .line 369
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    new-array v9, v0, [I

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->r:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    invoke-interface {v1}, Lcom/facebook/orca/camera/gallery/IImage;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/facebook/orca/camera/gallery/IImage;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    .line 380
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 383
    :catch_2
    move-exception v0

    .line 386
    const-string v1, "CropImage"

    const-string v2, "store image fail, continue anyway"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage;->b()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    return-object v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v8, 0x4000

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->b:Z

    if-nez v0, :cond_0

    .line 219
    iput-boolean v5, p0, Lcom/facebook/orca/camera/CropImage;->b:Z

    .line 225
    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->o:Z

    if-nez v0, :cond_4

    .line 228
    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    iget v1, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 230
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v2}, Lcom/facebook/orca/camera/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 233
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    iget v6, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    invoke-direct {v3, v9, v9, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 235
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    .line 236
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 239
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 242
    neg-int v4, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    neg-int v6, v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 245
    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->a()V

    .line 249
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    invoke-virtual {v0, v1, v5}, Lcom/facebook/orca/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    invoke-virtual {v0, v5, v5}, Lcom/facebook/orca/camera/CropImageView;->a(ZZ)V

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_7

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "return-data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/HighlightView;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 254
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 258
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->k:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 265
    iget-object v7, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v2, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 268
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->a()V

    .line 269
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->k:Z

    if-eqz v0, :cond_5

    .line 277
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 279
    int-to-float v6, v3

    div-float/2addr v6, v8

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v3, v3

    div-float/2addr v3, v8

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v4, v3, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 281
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 282
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 286
    :cond_5
    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->o:Z

    if-eqz v0, :cond_2

    .line 287
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    iget v3, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    iget-boolean v4, p0, Lcom/facebook/orca/camera/CropImage;->p:Z

    invoke-static/range {v0 .. v5}, Lcom/facebook/orca/camera/Util;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 258
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 307
    :cond_7
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->g:Z

    if-eqz v0, :cond_8

    sget v0, Lcom/facebook/orca/R$string;->image_crop_wallpaper:I

    .line 310
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/orca/camera/CropImage$4;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/camera/CropImage$4;-><init>(Lcom/facebook/orca/camera/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage;->l:Landroid/os/Handler;

    invoke-static {p0, v10, v0, v2, v1}, Lcom/facebook/orca/camera/Util;->a(Lcom/facebook/orca/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 307
    :cond_8
    sget v0, Lcom/facebook/orca/R$string;->image_crop_saving_image:I

    goto :goto_3
.end method

.method static synthetic b(Lcom/facebook/orca/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/orca/camera/CropImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/camera/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/facebook/orca/camera/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->h:I

    return v0
.end method

.method static synthetic h(Lcom/facebook/orca/camera/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/orca/camera/CropImage;->i:I

    return v0
.end method

.method static synthetic i(Lcom/facebook/orca/camera/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->j:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/facebook/orca/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->r:Landroid/content/ContentResolver;

    .line 93
    invoke-virtual {p0, v1}, Lcom/facebook/orca/camera/CropImage;->requestWindowFeature(I)Z

    .line 94
    sget v0, Lcom/facebook/orca/R$layout;->orca_cropimage:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/CropImage;->setContentView(I)V

    .line 96
    sget v0, Lcom/facebook/orca/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/CropImageView;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->q:Lcom/facebook/orca/camera/CropImageView;

    .line 98
    invoke-static {p0}, Lcom/facebook/orca/camera/MenuHelper;->a(Landroid/app/Activity;)V

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    const-string v0, "circleCrop"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/facebook/orca/camera/CropImage;->k:Z

    .line 106
    iput v1, p0, Lcom/facebook/orca/camera/CropImage;->h:I

    .line 107
    iput v1, p0, Lcom/facebook/orca/camera/CropImage;->i:I

    .line 109
    :cond_0
    const-string v0, "output"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->f:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "outputFormat"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 119
    :cond_1
    :goto_0
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    .line 120
    const-string v0, "aspectX"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImage;->h:I

    .line 121
    const-string v0, "aspectY"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImage;->i:I

    .line 122
    const-string v0, "outputX"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImage;->m:I

    .line 123
    const-string v0, "outputY"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/camera/CropImage;->n:I

    .line 124
    const-string v0, "scale"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->o:Z

    .line 125
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->p:Z

    .line 126
    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "noFaceDetection"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->j:Z

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 132
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->r:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/camera/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/facebook/orca/camera/gallery/IImageList;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/camera/CropImage;->t:Lcom/facebook/orca/camera/gallery/IImageList;

    .line 135
    iget-object v2, p0, Lcom/facebook/orca/camera/CropImage;->t:Lcom/facebook/orca/camera/gallery/IImageList;

    invoke-interface {v2, v0}, Lcom/facebook/orca/camera/gallery/IImageList;->a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->u:Lcom/facebook/orca/camera/gallery/IImage;

    invoke-interface {v0, v1}, Lcom/facebook/orca/camera/gallery/IImage;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->finish()V

    .line 169
    :goto_2
    return-void

    .line 117
    :cond_4
    const-string v0, "setWallpaper"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/camera/CropImage;->g:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 126
    goto :goto_1

    .line 151
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/orca/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 153
    sget v0, Lcom/facebook/orca/R$id;->discard:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/camera/CropImage$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/camera/CropImage$1;-><init>(Lcom/facebook/orca/camera/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v0, Lcom/facebook/orca/R$id;->save:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/camera/CropImage$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/camera/CropImage$2;-><init>(Lcom/facebook/orca/camera/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-direct {p0}, Lcom/facebook/orca/camera/CropImage;->a()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->t:Lcom/facebook/orca/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage;->t:Lcom/facebook/orca/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/facebook/orca/camera/gallery/IImageList;->a()V

    .line 411
    :cond_0
    invoke-super {p0}, Lcom/facebook/orca/camera/MonitoredActivity;->onDestroy()V

    .line 412
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Lcom/facebook/orca/camera/MonitoredActivity;->onPause()V

    .line 404
    return-void
.end method
