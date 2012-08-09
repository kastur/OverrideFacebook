.class Lcom/facebook/orca/camera/CropImage$6$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/camera/CropImage$6;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/CropImage$6;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 530
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v3, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget v0, v0, Lcom/facebook/orca/camera/CropImage$6;->b:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/facebook/orca/camera/CropImage;->a:Z

    .line 531
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget v0, v0, Lcom/facebook/orca/camera/CropImage$6;->b:I

    if-lez v0, :cond_1

    move v0, v2

    .line 532
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget v3, v3, Lcom/facebook/orca/camera/CropImage$6;->b:I

    if-ge v0, v3, :cond_2

    .line 533
    iget-object v3, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v4, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v4, v4, Lcom/facebook/orca/camera/CropImage$6;->a:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/facebook/orca/camera/CropImage$6;->a(Lcom/facebook/orca/camera/CropImage$6;Landroid/media/FaceDetector$Face;)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 530
    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage$6;->a(Lcom/facebook/orca/camera/CropImage$6;)V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImageView;->invalidate()V

    .line 539
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 540
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v3, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    invoke-static {v0}, Lcom/facebook/orca/camera/CropImage;->d(Lcom/facebook/orca/camera/CropImage;)Lcom/facebook/orca/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/HighlightView;

    iput-object v0, v3, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    .line 541
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage;->c:Lcom/facebook/orca/camera/HighlightView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/camera/HighlightView;->a(Z)V

    .line 544
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget v0, v0, Lcom/facebook/orca/camera/CropImage$6;->b:I

    if-le v0, v1, :cond_4

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$6$1;->a:Lcom/facebook/orca/camera/CropImage$6;

    iget-object v0, v0, Lcom/facebook/orca/camera/CropImage$6;->c:Lcom/facebook/orca/camera/CropImage;

    sget v1, Lcom/facebook/orca/R$string;->image_crop_multiface_crop_help:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :cond_4
    return-void
.end method
