.class Lcom/facebook/orca/camera/CropImage$3$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;

.field private synthetic c:Lcom/facebook/orca/camera/CropImage$3;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/CropImage$3;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iput-object p2, p0, Lcom/facebook/orca/camera/CropImage$3$1;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/facebook/orca/camera/CropImage$3$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v1, v1, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v1}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$3$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->c(Lcom/facebook/orca/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    iget-object v1, p0, Lcom/facebook/orca/camera/CropImage$3$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/facebook/orca/camera/CropImage;->a(Lcom/facebook/orca/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->b()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->c:Lcom/facebook/orca/camera/CropImage$3;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$3;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/facebook/orca/camera/CropImageView;->a(ZZ)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$3$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    return-void
.end method
