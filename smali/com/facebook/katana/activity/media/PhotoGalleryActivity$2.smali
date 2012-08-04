.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;
.super Ljava/lang/Object;
.source "PhotoGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/model/FacebookPhotoTag;

.field private synthetic b:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/model/FacebookPhotoTag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;->b:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;->a:Lcom/facebook/katana/model/FacebookPhotoTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;->b:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-eq v0, v1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;->b:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fb://profile/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$2;->a:Lcom/facebook/katana/model/FacebookPhotoTag;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhotoTag;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/IntentUriHandler;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 665
    :cond_0
    return-void
.end method
