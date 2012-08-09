.class Lcustom/android/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:I

.field private synthetic c:Lcustom/android/Gallery;


# direct methods
.method public constructor <init>(Lcustom/android/Gallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1314
    iput-object p1, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1315
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcustom/android/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    .line 1316
    return-void
.end method

.method static synthetic a(Lcustom/android/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 1303
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v0, p0}, Lcustom/android/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1321
    return-void
.end method

.method static synthetic a(Lcustom/android/Gallery$FlingRunnable;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcustom/android/Gallery$FlingRunnable;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1355
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1357
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-static {v0}, Lcustom/android/Gallery;->c(Lcustom/android/Gallery;)V

    .line 1358
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9
    .parameter

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1324
    if-nez p1, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-direct {p0}, Lcustom/android/Gallery$FlingRunnable;->a()V

    .line 1328
    if-gez p1, :cond_1

    move v1, v6

    .line 1329
    :goto_1
    iput v1, p0, Lcustom/android/Gallery$FlingRunnable;->b:I

    .line 1330
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1332
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v0, p0}, Lcustom/android/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1328
    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1346
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v0, p0}, Lcustom/android/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcustom/android/Gallery$FlingRunnable;->b(Z)V

    .line 1348
    return-void
.end method

.method public final b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1336
    if-nez p1, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-direct {p0}, Lcustom/android/Gallery$FlingRunnable;->a()V

    .line 1340
    iput v1, p0, Lcustom/android/Gallery$FlingRunnable;->b:I

    .line 1341
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-static {v2}, Lcustom/android/Gallery;->b(Lcustom/android/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1342
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v0, p0}, Lcustom/android/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1362
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    iget v0, v0, Lcustom/android/Gallery;->r:I

    if-nez v0, :cond_0

    .line 1363
    invoke-direct {p0, v8}, Lcustom/android/Gallery$FlingRunnable;->b(Z)V

    .line 1403
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcustom/android/Gallery;->b(Lcustom/android/Gallery;Z)Z

    .line 1369
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->a:Landroid/widget/Scroller;

    .line 1370
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1371
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1375
    iget v0, p0, Lcustom/android/Gallery$FlingRunnable;->b:I

    sub-int/2addr v0, v2

    .line 1377
    iget-object v3, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v3}, Lcustom/android/Gallery;->getPaddingLeft()I

    move-result v3

    .line 1378
    iget-object v4, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v4}, Lcustom/android/Gallery;->getPaddingRight()I

    move-result v4

    .line 1380
    if-lez v0, :cond_1

    .line 1382
    iget-object v5, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    iget-object v6, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    iget v6, v6, Lcustom/android/Gallery;->f:I

    invoke-static {v5, v6}, Lcustom/android/Gallery;->a(Lcustom/android/Gallery;I)I

    .line 1385
    iget-object v5, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v5}, Lcustom/android/Gallery;->getWidth()I

    move-result v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1395
    :goto_1
    iget-object v3, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v3, v0}, Lcustom/android/Gallery;->d(I)V

    .line 1397
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-static {v0}, Lcustom/android/Gallery;->d(Lcustom/android/Gallery;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1398
    iput v2, p0, Lcustom/android/Gallery$FlingRunnable;->b:I

    .line 1399
    iget-object v0, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v0, p0}, Lcustom/android/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1388
    :cond_1
    iget-object v5, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v5}, Lcustom/android/Gallery;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 1389
    iget-object v6, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    iget-object v7, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    iget v7, v7, Lcustom/android/Gallery;->f:I

    add-int/2addr v5, v7

    invoke-static {v6, v5}, Lcustom/android/Gallery;->a(Lcustom/android/Gallery;I)I

    .line 1392
    iget-object v5, p0, Lcustom/android/Gallery$FlingRunnable;->c:Lcustom/android/Gallery;

    invoke-virtual {v5}, Lcustom/android/Gallery;->getWidth()I

    move-result v5

    sub-int v4, v5, v4

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1401
    :cond_2
    invoke-direct {p0, v8}, Lcustom/android/Gallery$FlingRunnable;->b(Z)V

    goto :goto_0
.end method
