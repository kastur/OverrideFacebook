.class Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;
.super Lcom/facebook/orca/images/UrlImageProcessor;
.source "ThreadViewImageAttachmentView.java"


# instance fields
.field private synthetic b:Lcom/facebook/orca/images/UrlImageProcessor;

.field private synthetic c:I

.field private synthetic d:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/images/UrlImageProcessor;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->d:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    iput p3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->c:I

    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImageProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/UrlImageProcessor;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->d:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->d:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-static {v2, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 519
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tviatv_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->b:Lcom/facebook/orca/images/UrlImageProcessor;

    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImageProcessor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$2;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
