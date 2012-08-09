.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;
.super Lcom/google/android/maps/Overlay;
.source "ThreadViewMapActivityTabImpl.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 339
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->b:Ljava/util/List;

    .line 342
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a:Landroid/graphics/Paint;

    .line 343
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 344
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    if-eqz p3, :cond_1

    .line 363
    :cond_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    .line 357
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;

    .line 359
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 360
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->c()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v0

    .line 361
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayForRadius;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
