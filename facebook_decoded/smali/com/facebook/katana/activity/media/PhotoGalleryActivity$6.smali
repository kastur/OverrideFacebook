.class Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoGalleryActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->r(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/ui/ImageViewTouchBase;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Lcom/facebook/katana/ui/ImageViewTouchBase;->d()Landroid/graphics/RectF;

    move-result-object v1

    .line 1266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    .line 1268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    .line 1269
    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v3, v4}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 1270
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    new-instance v3, Lcom/facebook/katana/activity/media/TouchBlip;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    const v5, 0x7f080068

    invoke-virtual {v0, v5}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v4, v0}, Lcom/facebook/katana/activity/media/TouchBlip;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/TouchBlip;)Lcom/facebook/katana/activity/media/TouchBlip;

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->s(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/TouchBlip;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->t(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/katana/activity/media/TouchBlip;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 1277
    if-eqz p2, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->u(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1281
    :cond_1
    return-void
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1286
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->v(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1287
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_0

    .line 1294
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)V

    .line 1297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a(Landroid/view/MotionEvent;Z)V

    .line 1301
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v0, v1, :cond_0

    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a(Landroid/view/MotionEvent;Z)V

    .line 1310
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1316
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->w(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1319
    const/4 v0, 0x0

    .line 1333
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v1, v2, :cond_2

    .line 1323
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    goto :goto_0

    .line 1324
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->CONTROLS:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v1, v2, :cond_3

    .line 1325
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->DEFAULT:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;)V

    goto :goto_0

    .line 1326
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a:Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->b(Lcom/facebook/katana/activity/media/PhotoGalleryActivity;)Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;->TAGGING:Lcom/facebook/katana/activity/media/PhotoGalleryActivity$ViewMode;

    if-ne v1, v2, :cond_0

    .line 1329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1330
    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity$6;->a(Landroid/view/MotionEvent;Z)V

    goto :goto_0
.end method
