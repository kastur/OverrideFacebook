.class Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;
.super Ljava/lang/Object;
.source "CropImageLayout.java"


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CropImageLayout;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p3, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->a:F

    .line 465
    iput p4, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->b:F

    .line 466
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->c:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->c:Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)F
    .locals 1
    .parameter

    .prologue
    .line 458
    iget v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->a:F

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)F
    .locals 1
    .parameter

    .prologue
    .line 458
    iget v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->b:F

    return v0
.end method
