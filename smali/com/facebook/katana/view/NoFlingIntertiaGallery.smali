.class public Lcom/facebook/katana/view/NoFlingIntertiaGallery;
.super Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;
.source "NoFlingIntertiaGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/photos/view/GalleryWithSwipingFix;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    const/16 v0, 0x15

    .line 47
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/view/NoFlingIntertiaGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    return v1

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_1
    const/16 v0, 0x16

    goto :goto_1
.end method
