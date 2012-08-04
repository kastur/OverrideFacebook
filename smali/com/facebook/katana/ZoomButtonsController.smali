.class public Lcom/facebook/katana/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/WindowManager;

.field private final d:Landroid/view/View;

.field private final e:[I

.field private final f:Landroid/widget/FrameLayout;

.field private final g:[I

.field private h:Landroid/view/View;

.field private final i:[I

.field private j:Z

.field private k:Z

.field private final l:Landroid/graphics/Rect;

.field private final m:[I

.field private n:Ljava/lang/Runnable;

.field private final o:Landroid/content/IntentFilter;

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/facebook/katana/ZoomButtonsController;->a:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/facebook/katana/ZoomButtonsController;->a:I

    return v0
.end method

.method private a(II)Landroid/view/View;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 626
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    aget v0, v0, v4

    sub-int v7, p1, v0

    .line 627
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v8, p2, v0

    .line 628
    iget-object v9, p0, Lcom/facebook/katana/ZoomButtonsController;->l:Landroid/graphics/Rect;

    .line 630
    const/4 v3, 0x0

    .line 631
    const v1, 0x7fffffff

    .line 633
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_3

    .line 634
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 636
    invoke-virtual {v2, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 640
    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    :goto_1
    return-object v2

    .line 645
    :cond_0
    iget v0, v9, Landroid/graphics/Rect;->left:I

    if-lt v7, v0, :cond_1

    iget v0, v9, Landroid/graphics/Rect;->right:I

    if-gt v7, v0, :cond_1

    move v0, v4

    .line 652
    :goto_2
    iget v5, v9, Landroid/graphics/Rect;->top:I

    if-lt v8, v5, :cond_2

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v5, :cond_2

    move v5, v4

    .line 658
    :goto_3
    mul-int/2addr v0, v0

    mul-int/2addr v5, v5

    add-int/2addr v0, v5

    .line 660
    if-gez v0, :cond_4

    if-ge v0, v1, :cond_4

    move-object v1, v2

    .line 633
    :goto_4
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 648
    :cond_1
    iget v0, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, v9, Landroid/graphics/Rect;->right:I

    sub-int v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 655
    :cond_2
    iget v5, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 667
    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_4
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 443
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController;->h:Landroid/view/View;

    .line 612
    if-eqz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->i:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 615
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ZoomButtonsController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/katana/ZoomButtonsController;->a(I)V

    return-void
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 480
    invoke-static {v1}, Lcom/facebook/katana/ZoomButtonsController;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 483
    invoke-virtual {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->a(Z)V

    .line 504
    :goto_0
    return v0

    .line 485
    :cond_0
    sget v1, Lcom/facebook/katana/ZoomButtonsController;->a:I

    invoke-direct {p0, v1}, Lcom/facebook/katana/ZoomButtonsController;->a(I)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->c()Landroid/view/View;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 504
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/ZoomButtonsController;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/ZoomButtonsController;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/katana/ZoomButtonsController;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/ZoomButtonsController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->q:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 451
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 460
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->e:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 461
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->e:[I

    aget v3, v3, v5

    aput v3, v2, v5

    .line 462
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->e:[I

    aget v3, v3, v6

    add-int/2addr v3, v0

    aput v3, v2, v6

    .line 464
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->m:[I

    .line 465
    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 468
    aget v3, v2, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 469
    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 470
    aget v1, v2, v6

    add-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 471
    iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->k:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 509
    sparse-switch p0, :sswitch_data_0

    .line 519
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 517
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private c()Landroid/view/View;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 541
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->d()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/ZoomButtonsController;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 671
    sget v0, Lcom/facebook/katana/ZoomButtonsController;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->a(I)V

    .line 672
    invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->b()V

    .line 673
    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/facebook/katana/ZoomButtonsController;->b()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 347
    if-eqz p1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget v0, Lcom/facebook/katana/ZoomButtonsController;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/katana/ZoomButtonsController;->a(I)V

    .line 363
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->k:Z

    if-eq v0, p1, :cond_0

    .line 366
    iput-boolean p1, p0, Lcom/facebook/katana/ZoomButtonsController;->k:Z

    .line 368
    if-eqz p1, :cond_5

    .line 369
    iget-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->n:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 376
    new-instance v0, Lcom/facebook/katana/ZoomButtonsController$5;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ZoomButtonsController$5;-><init>(Lcom/facebook/katana/ZoomButtonsController;)V

    iput-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->n:Ljava/lang/Runnable;

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->p:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->o:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->j:Z

    goto :goto_0

    .line 399
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->h:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ZoomButtonsController;->j:Z

    .line 408
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->f:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ZoomButtonsController;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, -0x3e60

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 552
    iget-boolean v2, p0, Lcom/facebook/katana/ZoomButtonsController;->j:Z

    if-eqz v2, :cond_2

    .line 554
    if-eq v3, v0, :cond_0

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->d:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 556
    invoke-direct {p0, v4}, Lcom/facebook/katana/ZoomButtonsController;->a(Landroid/view/View;)V

    .line 557
    iput-boolean v1, p0, Lcom/facebook/katana/ZoomButtonsController;->j:Z

    .line 606
    :cond_1
    :goto_0
    return v0

    .line 564
    :cond_2
    sget v2, Lcom/facebook/katana/ZoomButtonsController;->a:I

    invoke-direct {p0, v2}, Lcom/facebook/katana/ZoomButtonsController;->a(I)V

    .line 566
    iget-object v2, p0, Lcom/facebook/katana/ZoomButtonsController;->h:Landroid/view/View;

    .line 568
    packed-switch v3, :pswitch_data_0

    .line 580
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_5

    .line 582
    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->i:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 583
    iget-object v4, p0, Lcom/facebook/katana/ZoomButtonsController;->g:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/facebook/katana/ZoomButtonsController;->i:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    .line 585
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 588
    iget-object v6, p0, Lcom/facebook/katana/ZoomButtonsController;->e:[I

    aget v1, v6, v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/facebook/katana/ZoomButtonsController;->e:[I

    aget v0, v3, v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 593
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 594
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 595
    cmpg-float v3, v0, v7

    if-gez v3, :cond_3

    cmpl-float v3, v0, v8

    if-lez v3, :cond_3

    .line 596
    neg-float v0, v0

    invoke-virtual {v5, v0, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 598
    :cond_3
    cmpg-float v0, v1, v7

    if-gez v0, :cond_4

    cmpl-float v0, v1, v8

    if-lez v0, :cond_4

    .line 599
    neg-float v0, v1

    invoke-virtual {v5, v7, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 601
    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 602
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 570
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/ZoomButtonsController;->a(II)Landroid/view/View;

    move-result-object v2

    .line 571
    invoke-direct {p0, v2}, Lcom/facebook/katana/ZoomButtonsController;->a(Landroid/view/View;)V

    goto :goto_1

    .line 576
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/facebook/katana/ZoomButtonsController;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 606
    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
