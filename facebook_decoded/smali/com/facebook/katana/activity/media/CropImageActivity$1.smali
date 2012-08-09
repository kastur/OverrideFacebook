.class Lcom/facebook/katana/activity/media/CropImageActivity$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CropImageActivity$1;->a:Lcom/facebook/katana/activity/media/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageActivity$1;->a:Lcom/facebook/katana/activity/media/CropImageActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/CropImageActivity;->finishCropping(Landroid/view/View;)V

    .line 41
    return-void
.end method
