.class Lcom/facebook/orca/camera/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/facebook/orca/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/orca/camera/CropImage$1;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$1;->a:Lcom/facebook/orca/camera/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/camera/CropImage;->setResult(I)V

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/camera/CropImage$1;->a:Lcom/facebook/orca/camera/CropImage;

    invoke-virtual {v0}, Lcom/facebook/orca/camera/CropImage;->finish()V

    .line 158
    return-void
.end method
