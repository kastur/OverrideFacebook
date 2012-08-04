.class public Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;
.super Landroid/view/ViewGroup;
.source "RefreshableListViewContainer.java"


# static fields
.field private static final a:Lcom/facebook/orca/debug/WtfToken;


# instance fields
.field private b:Landroid/widget/Scroller;

.field private c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field private d:I

.field private e:I

.field private f:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/facebook/orca/debug/WtfToken;

    invoke-direct {v0}, Lcom/facebook/orca/debug/WtfToken;-><init>()V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Lcom/facebook/orca/debug/WtfToken;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 52
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 53
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 52
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 53
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 51
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 52
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 53
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    .line 73
    sget-object v0, Lcom/facebook/orca/R$styleable;->PullToRefreshListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x420c

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V

    .line 460
    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq p1, v0, :cond_0

    .line 464
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 465
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    .line 466
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setDirection(I)V

    .line 467
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v1, :cond_1

    .line 468
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-static {v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 473
    :goto_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;->a(Z)V

    .line 477
    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_2

    .line 481
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 482
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    div-float v0, v2, v0

    const/high16 v2, 0x457a

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 484
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    float-to-int v2, v0

    .line 485
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 498
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 500
    :cond_1
    return-void

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_1

    .line 488
    if-nez p1, :cond_0

    .line 489
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    float-to-int v2, v0

    .line 491
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v0, :cond_3

    .line 492
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    sub-int v4, v0, v2

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    const/16 v5, 0x1f4

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 494
    :cond_3
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    neg-int v0, v0

    sub-int v4, v0, v2

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v2, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 275
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    sub-float/2addr v2, v3

    .line 276
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_3
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-ne v2, v0, :cond_5

    .line 281
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 283
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    sub-float/2addr v2, v3

    .line 284
    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 286
    goto :goto_0

    .line 289
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown direction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 3
    .parameter

    .prologue
    .line 503
    if-nez p0, :cond_0

    .line 504
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 506
    :goto_0
    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 506
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    goto :goto_0

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown direction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 298
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 299
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 300
    float-to-int v3, v1

    .line 301
    float-to-int v4, v2

    .line 302
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 303
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->getHitRect(Landroid/graphics/Rect;)V

    .line 304
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/widget/ListView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 307
    invoke-virtual {v0}, Landroid/widget/ListView;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 308
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 311
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 324
    :goto_0
    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a:Lcom/facebook/orca/debug/WtfToken;

    const-string v2, "orca:RefreshableListViewContainer"

    const-string v3, "Caught and ignoring ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/orca/debug/BLog;->a(Lcom/facebook/orca/debug/WtfToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 330
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    .line 335
    :cond_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 340
    if-eqz v0, :cond_1

    .line 344
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 346
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->offsetTopAndBottom(I)V

    .line 347
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->offsetTopAndBottom(I)V

    .line 348
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 349
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->invalidate()V

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 400
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    sub-float/2addr v0, v1

    .line 401
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v1, :cond_1

    .line 402
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 403
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    .line 414
    :goto_0
    return-void

    .line 405
    :cond_0
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    goto :goto_0

    .line 408
    :cond_1
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 409
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    goto :goto_0

    .line 411
    :cond_2
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 420
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    sub-float/2addr v0, v1

    .line 422
    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    .line 423
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 425
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v0, :cond_1

    .line 426
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 430
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 432
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v0, :cond_2

    .line 433
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    .line 438
    :cond_0
    :goto_1
    return-void

    .line 428
    :cond_1
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    goto :goto_0

    .line 435
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    goto :goto_1
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v2

    .line 358
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {v2, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    .line 367
    goto :goto_0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v2

    .line 375
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 380
    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 383
    if-nez v3, :cond_3

    move v0, v1

    .line 384
    goto :goto_0

    .line 386
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 387
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 388
    invoke-virtual {v2, v5}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 389
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 390
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 391
    goto :goto_0
.end method

.method private f()Landroid/view/View;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    return-object v0
.end method

.method private h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_0

    .line 446
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 449
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    .line 354
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_0

    .line 453
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 454
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 456
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 191
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 97
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "RefreshableListViewContainer.onLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    if-nez v1, :cond_1

    .line 149
    sub-int v1, p5, p3

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v5, v5, v3, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->layout(IIII)V

    .line 154
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    rsub-int/lit8 v1, v1, 0x0

    .line 156
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v5, v1, v3, v5}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 159
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    sub-int v2, v1, v2

    .line 161
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 182
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->l:F

    .line 183
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 184
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    goto :goto_0

    .line 162
    :cond_1
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 165
    sub-int v1, p5, p3

    .line 167
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;

    move-result-object v2

    sub-int v3, p4, p2

    invoke-virtual {v2, v5, v5, v3, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->layout(IIII)V

    .line 170
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    add-int/2addr v2, v1

    .line 172
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v1, v4, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->layout(IIII)V

    .line 175
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    add-int/2addr v1, v2

    .line 177
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown direction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 117
    const-string v1, "RefreshableListViewContainer.onMeasure"

    invoke-static {v1}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v3

    .line 118
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildCount()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 123
    :goto_0
    if-ge v0, v4, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 125
    invoke-virtual {p0, v5, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->measureChild(Landroid/view/View;II)V

    .line 126
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 134
    invoke-static {v1, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setMeasuredDimension(II)V

    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    .line 136
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->i:I

    .line 137
    invoke-virtual {v3}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 202
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v4, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g:I

    if-ne v3, v1, :cond_0

    .line 204
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 210
    :cond_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 259
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->m:F

    .line 262
    if-eqz v0, :cond_3

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 265
    :cond_3
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c()V

    .line 266
    return v1

    :pswitch_0
    move v0, v1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v3, :cond_6

    .line 217
    :cond_4
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    .line 223
    :cond_5
    :goto_1
    iput v5, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    move v0, v1

    .line 224
    goto :goto_0

    .line 219
    :cond_6
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v3, :cond_5

    .line 220
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;Z)V

    .line 221
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Z)V

    goto :goto_1

    .line 226
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v3, :cond_8

    .line 227
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c(Landroid/view/MotionEvent;)V

    .line 228
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->e:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 229
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-static {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0

    .line 230
    :cond_7
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->j:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    .line 231
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0

    .line 234
    :cond_8
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v3, :cond_c

    .line 237
    :cond_9
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d(Landroid/view/MotionEvent;)V

    .line 238
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_a

    .line 239
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    move v0, v1

    goto/16 :goto_0

    .line 241
    :cond_a
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    .line 242
    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto/16 :goto_0

    .line 243
    :cond_b
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->k:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->h:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 244
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    invoke-static {v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b(I)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto/16 :goto_0

    .line 248
    :cond_c
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->c:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v2, v3, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDirection(I)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->d:I

    .line 93
    return-void
.end method

.method public setLastLoadedTime(J)V
    .locals 1
    .parameter

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->g()Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setLastLoadedTime(J)V

    .line 442
    return-void
.end method

.method public setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->f:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;

    .line 85
    return-void
.end method
