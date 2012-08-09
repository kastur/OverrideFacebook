.class public Lcom/facebook/katana/activity/media/CropImageActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CropImageActivity.java"


# instance fields
.field private e:Lcom/facebook/katana/activity/media/CropImageLayout;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/CropImageLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageActivity;->e:Lcom/facebook/katana/activity/media/CropImageLayout;

    .line 37
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/media/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CropImageActivity$1;-><init>(Lcom/facebook/katana/activity/media/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "input_image_path_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageActivity;->e:Lcom/facebook/katana/activity/media/CropImageLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ImageUtils;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/CropImageLayout;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageActivity;->f:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CropImageActivity;->deleteFile(Ljava/lang/String;)Z

    .line 57
    :cond_0
    const v0, 0x7f0b0449

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageActivity;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot decode file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finishCropping(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    const-string v1, "image_crop_rect_extra"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageActivity;->e:Lcom/facebook/katana/activity/media/CropImageLayout;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/CropImageLayout;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageActivity;->finish()V

    .line 67
    return-void
.end method
