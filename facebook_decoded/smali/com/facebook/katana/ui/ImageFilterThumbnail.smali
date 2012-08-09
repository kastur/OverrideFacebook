.class public Lcom/facebook/katana/ui/ImageFilterThumbnail;
.super Landroid/widget/RelativeLayout;
.source "ImageFilterThumbnail.java"


# virtual methods
.method public setThumbnailImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v1, p1}, Lcom/facebook/katana/features/imagefilters/ImageFilter;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method
