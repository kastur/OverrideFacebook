.class public Lcustom/android/Gallery;
.super Lcustom/android/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private A:I

.field private B:Landroid/view/View;

.field private C:Lcustom/android/Gallery$FlingRunnable;

.field private D:Ljava/lang/Runnable;

.field private E:Z

.field private F:Landroid/view/View;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcustom/android/AdapterView$AdapterContextMenuInfo;

.field private L:Z

.field private M:Z

.field private v:I

.field private w:I

.field private x:F

.field private y:I

.field private z:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcustom/android/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    sget v0, Lcustom/android/R$attr;->galleryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcustom/android/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcustom/android/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput v3, p0, Lcustom/android/Gallery;->v:I

    .line 101
    const/16 v0, 0x190

    iput v0, p0, Lcustom/android/Gallery;->w:I

    .line 128
    new-instance v0, Lcustom/android/Gallery$FlingRunnable;

    invoke-direct {v0, p0}, Lcustom/android/Gallery$FlingRunnable;-><init>(Lcustom/android/Gallery;)V

    iput-object v0, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    .line 134
    new-instance v0, Lcustom/android/Gallery$1;

    invoke-direct {v0, p0}, Lcustom/android/Gallery$1;-><init>(Lcustom/android/Gallery;)V

    iput-object v0, p0, Lcustom/android/Gallery;->D:Ljava/lang/Runnable;

    .line 158
    iput-boolean v2, p0, Lcustom/android/Gallery;->G:Z

    .line 163
    iput-boolean v2, p0, Lcustom/android/Gallery;->H:Z

    .line 201
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcustom/android/Gallery;->z:Landroid/view/GestureDetector;

    .line 202
    iget-object v0, p0, Lcustom/android/Gallery;->z:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 204
    sget-object v0, Lcustom/android/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 208
    if-ltz v1, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->setGravity(I)V

    .line 212
    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 214
    if-lez v1, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->setAnimationDuration(I)V

    .line 218
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 220
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->setSpacing(I)V

    .line 222
    const/4 v1, 0x2

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 224
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->setUnselectedAlpha(F)V

    .line 226
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    const/16 v1, 0x400

    .line 231
    const/16 v2, 0x800

    .line 232
    const-class v3, Landroid/view/ViewGroup;

    .line 235
    :try_start_0
    const-string v0, "FLAG_USE_CHILD_DRAWING_ORDER"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 237
    const-string v4, "FLAG_SUPPORT_STATIC_TRANSFORMATIONS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 240
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 243
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 244
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 252
    :goto_0
    :try_start_1
    const-string v2, "mGroupFlags"

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 253
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 256
    or-int/2addr v1, v3

    .line 257
    or-int/2addr v0, v1

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 265
    :goto_1
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v4, "Gallery"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 249
    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    const-string v4, "Gallery"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_0

    .line 260
    :catch_2
    move-exception v0

    .line 261
    const-string v1, "Gallery"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 262
    :catch_3
    move-exception v0

    .line 263
    const-string v1, "Gallery"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a()I
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingLeft()I

    move-result v0

    .line 486
    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingRight()I

    move-result v1

    .line 487
    invoke-virtual {p0}, Lcustom/android/Gallery;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private a(Landroid/view/View;Z)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 840
    invoke-virtual {p0}, Lcustom/android/Gallery;->getMeasuredHeight()I

    move-result v1

    .line 841
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 843
    const/4 v0, 0x0

    .line 845
    iget v3, p0, Lcustom/android/Gallery;->y:I

    sparse-switch v3, :sswitch_data_0

    .line 858
    :goto_0
    return v0

    .line 847
    :sswitch_0
    iget-object v0, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 850
    :sswitch_1
    iget-object v0, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 852
    iget-object v1, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 853
    goto :goto_0

    .line 855
    :sswitch_2
    iget-object v0, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    goto :goto_0

    .line 845
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcustom/android/Gallery;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcustom/android/Gallery;->A:I

    return p1
.end method

.method private a(ZI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 438
    if-eqz p1, :cond_1

    iget v0, p0, Lcustom/android/Gallery;->r:I

    add-int/lit8 v0, v0, -0x1

    .line 439
    :goto_0
    iget v2, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    if-nez v0, :cond_2

    move v1, p2

    .line 464
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 438
    goto :goto_0

    .line 445
    :cond_2
    invoke-static {v0}, Lcustom/android/Gallery;->c(Landroid/view/View;)I

    move-result v0

    .line 446
    invoke-direct {p0}, Lcustom/android/Gallery;->a()I

    move-result v2

    .line 448
    if-eqz p1, :cond_4

    .line 449
    if-le v0, v2, :cond_0

    .line 462
    :cond_3
    sub-int v0, v2, v0

    .line 464
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 455
    :cond_4
    if-lt v0, v2, :cond_3

    goto :goto_1

    .line 464
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1
.end method

.method private a(IIIZ)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    iget-object v0, p0, Lcustom/android/Gallery;->e:Lcustom/android/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcustom/android/AbsSpinner$RecycleBin;->a()Landroid/view/View;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcustom/android/Gallery;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1, v0, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 774
    invoke-direct {p0, v0, p2, p3, p4}, Lcustom/android/Gallery;->a(Landroid/view/View;IIZ)V

    .line 776
    return-object v0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcustom/android/Gallery$LayoutParams;

    .line 797
    if-nez v0, :cond_3

    .line 798
    invoke-virtual {p0}, Lcustom/android/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcustom/android/Gallery$LayoutParams;

    move-object v3, v0

    .line 801
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0, p1, v0, v3}, Lcustom/android/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 803
    if-nez p2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 806
    iget v0, p0, Lcustom/android/Gallery;->b:I

    iget-object v1, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    iget v4, v3, Lcustom/android/Gallery$LayoutParams;->height:I

    invoke-static {v0, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 808
    iget v1, p0, Lcustom/android/Gallery;->c:I

    iget-object v4, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v3, v3, Lcustom/android/Gallery$LayoutParams;->width:I

    invoke-static {v1, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 812
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 818
    invoke-direct {p0, p1, v2}, Lcustom/android/Gallery;->a(Landroid/view/View;Z)I

    move-result v1

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v2, v1, v0

    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 822
    if-eqz p4, :cond_2

    .line 824
    add-int/2addr v0, p3

    move v6, v0

    move v0, p3

    move p3, v6

    .line 830
    :goto_2
    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/view/View;->layout(IIII)V

    .line 831
    return-void

    :cond_1
    move v0, v1

    .line 801
    goto :goto_1

    .line 826
    :cond_2
    sub-int v0, p3, v0

    .line 827
    goto :goto_2

    :cond_3
    move-object v3, v0

    goto :goto_0
.end method

.method static synthetic a(Lcustom/android/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcustom/android/Gallery;->v()V

    return-void
.end method

.method private a(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v4

    .line 508
    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingLeft()I

    move-result v5

    move v2, v1

    move v0, v1

    .line 510
    :goto_0
    if-ge v2, v4, :cond_1

    .line 511
    invoke-virtual {p0, v2}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 512
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 513
    add-int/lit8 v3, v0, 0x1

    .line 516
    iget-object v0, p0, Lcustom/android/Gallery;->e:Lcustom/android/AbsSpinner$RecycleBin;

    invoke-virtual {v0, v6}, Lcustom/android/AbsSpinner$RecycleBin;->a(Landroid/view/View;)V

    .line 510
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcustom/android/Gallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingRight()I

    move-result v2

    sub-int v3, v0, v2

    .line 521
    add-int/lit8 v0, v4, -0x1

    move v2, v0

    move v0, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 522
    invoke-virtual {p0, v2}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 527
    add-int/lit8 v1, v0, 0x1

    .line 528
    iget-object v0, p0, Lcustom/android/Gallery;->e:Lcustom/android/AbsSpinner$RecycleBin;

    invoke-virtual {v0, v4}, Lcustom/android/AbsSpinner$RecycleBin;->a(Landroid/view/View;)V

    .line 521
    add-int/lit8 v0, v2, -0x1

    move v7, v0

    move v0, v1

    move v1, v2

    move v2, v7

    goto :goto_1

    .line 533
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcustom/android/Gallery;->detachViewsFromParent(II)V

    .line 535
    if-eqz p1, :cond_2

    .line 536
    iget v1, p0, Lcustom/android/Gallery;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcustom/android/Gallery;->f:I

    .line 538
    :cond_2
    return-void
.end method

.method static synthetic a(Lcustom/android/Gallery;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    return v0
.end method

.method static synthetic b(Lcustom/android/Gallery;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcustom/android/Gallery;->w:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    invoke-static {v0}, Lcustom/android/Gallery;->c(Landroid/view/View;)I

    move-result v0

    .line 549
    invoke-direct {p0}, Lcustom/android/Gallery;->a()I

    move-result v1

    .line 551
    sub-int v0, v1, v0

    .line 552
    if-eqz v0, :cond_2

    .line 553
    iget-object v1, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    invoke-virtual {v1, v0}, Lcustom/android/Gallery$FlingRunnable;->b(I)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0}, Lcustom/android/Gallery;->p()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1095
    .line 1097
    iget-object v0, p0, Lcustom/android/Gallery;->l:Lcustom/android/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 1098
    iget-object v0, p0, Lcustom/android/Gallery;->l:Lcustom/android/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcustom/android/Gallery;->B:Landroid/view/View;

    iget v2, p0, Lcustom/android/Gallery;->A:I

    invoke-interface {v0}, Lcustom/android/AdapterView$OnItemLongClickListener;->a()Z

    move-result v0

    .line 1102
    :goto_0
    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Lcustom/android/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcustom/android/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcustom/android/Gallery;->K:Lcustom/android/AdapterView$AdapterContextMenuInfo;

    .line 1104
    invoke-super {p0, p0}, Lcustom/android/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1107
    :cond_0
    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->performHapticFeedback(I)Z

    .line 1111
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcustom/android/Gallery;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->E:Z

    return v0
.end method

.method private static c(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcustom/android/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcustom/android/Gallery;->b()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1031
    if-eqz p1, :cond_0

    .line 1032
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1035
    :cond_0
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->setPressed(Z)V

    .line 1036
    return-void
.end method

.method static synthetic d(Lcustom/android/Gallery;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcustom/android/Gallery;->E:Z

    return v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 476
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 476
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method private f(I)Z
    .locals 2
    .parameter

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_0

    .line 1203
    invoke-direct {p0}, Lcustom/android/Gallery;->a()I

    move-result v1

    invoke-static {v0}, Lcustom/android/Gallery;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    .line 1204
    iget-object v1, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    invoke-virtual {v1, v0}, Lcustom/android/Gallery$FlingRunnable;->b(I)V

    .line 1205
    const/4 v0, 0x1

    .line 1208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    .line 564
    invoke-super {p0}, Lcustom/android/AbsSpinner;->l()V

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcustom/android/Gallery;->invalidate()V

    .line 567
    invoke-virtual {p0}, Lcustom/android/Gallery;->e()V

    .line 568
    return-void
.end method

.method private q()V
    .locals 6

    .prologue
    .line 583
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    .line 584
    iget-object v1, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcustom/android/Gallery;->a()I

    move-result v4

    .line 589
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt v1, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 594
    :cond_2
    const v3, 0x7fffffff

    .line 595
    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 598
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 600
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    if-gt v5, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-lt v5, v4, :cond_3

    .line 614
    :goto_2
    iget v0, p0, Lcustom/android/Gallery;->f:I

    add-int/2addr v0, v1

    .line 616
    iget v1, p0, Lcustom/android/Gallery;->p:I

    if-eq v0, v1, :cond_0

    .line 617
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->b(I)V

    .line 618
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->c(I)V

    .line 619
    invoke-virtual {p0}, Lcustom/android/Gallery;->n()V

    goto :goto_0

    .line 606
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 608
    if-ge v2, v3, :cond_4

    move v0, v1

    .line 596
    :goto_3
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 688
    iget v3, p0, Lcustom/android/Gallery;->v:I

    .line 689
    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingLeft()I

    move-result v4

    .line 692
    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_0

    .line 697
    iget v0, p0, Lcustom/android/Gallery;->f:I

    add-int/lit8 v0, v0, -0x1

    .line 698
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    .line 706
    :goto_0
    if-le v2, v4, :cond_1

    if-ltz v0, :cond_1

    .line 707
    iget v5, p0, Lcustom/android/Gallery;->p:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v2, v1}, Lcustom/android/Gallery;->a(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 711
    iput v0, p0, Lcustom/android/Gallery;->f:I

    .line 714
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    .line 715
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcustom/android/Gallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcustom/android/Gallery;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 703
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcustom/android/Gallery;->E:Z

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 717
    :cond_1
    return-void
.end method

.method private s()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 720
    iget v2, p0, Lcustom/android/Gallery;->v:I

    .line 721
    invoke-virtual {p0}, Lcustom/android/Gallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcustom/android/Gallery;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 722
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v0

    .line 723
    iget v4, p0, Lcustom/android/Gallery;->r:I

    .line 726
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 730
    if-eqz v5, :cond_0

    .line 731
    iget v1, p0, Lcustom/android/Gallery;->f:I

    add-int/2addr v1, v0

    .line 732
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 739
    :goto_0
    if-ge v0, v3, :cond_1

    if-ge v1, v4, :cond_1

    .line 740
    iget v5, p0, Lcustom/android/Gallery;->p:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v6}, Lcustom/android/Gallery;->a(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_0
    iget v0, p0, Lcustom/android/Gallery;->r:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcustom/android/Gallery;->f:I

    .line 735
    invoke-virtual {p0}, Lcustom/android/Gallery;->getPaddingLeft()I

    move-result v0

    .line 736
    iput-boolean v6, p0, Lcustom/android/Gallery;->E:Z

    goto :goto_0

    .line 747
    :cond_1
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->M:Z

    .line 991
    iget-object v0, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    invoke-static {v0}, Lcustom/android/Gallery$FlingRunnable;->a(Lcustom/android/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcustom/android/Gallery;->b()V

    .line 995
    :cond_0
    invoke-direct {p0}, Lcustom/android/Gallery;->v()V

    .line 996
    return-void
.end method

.method private u()V
    .locals 0

    .prologue
    .line 1002
    invoke-direct {p0}, Lcustom/android/Gallery;->t()V

    .line 1003
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1040
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1041
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1040
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {p0, v2}, Lcustom/android/Gallery;->setPressed(Z)V

    .line 1045
    return-void
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 1182
    iget v0, p0, Lcustom/android/Gallery;->r:I

    if-lez v0, :cond_0

    iget v0, p0, Lcustom/android/Gallery;->p:I

    if-lez v0, :cond_0

    .line 1183
    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcustom/android/Gallery;->f(I)Z

    .line 1184
    const/4 v0, 0x1

    .line 1186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 1191
    iget v0, p0, Lcustom/android/Gallery;->r:I

    if-lez v0, :cond_0

    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->r:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1192
    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcustom/android/Gallery;->f(I)Z

    .line 1193
    const/4 v0, 0x1

    .line 1195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1221
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    .line 1223
    iget v1, p0, Lcustom/android/Gallery;->p:I

    iget v2, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    .line 1224
    if-nez v1, :cond_1

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1229
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1231
    invoke-virtual {p0}, Lcustom/android/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1232
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1237
    :cond_2
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1244
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 1213
    invoke-super {p0, p1}, Lcustom/android/AbsSpinner;->b(I)V

    .line 1216
    invoke-direct {p0}, Lcustom/android/Gallery;->y()V

    .line 1217
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 357
    instance-of v0, p1, Lcustom/android/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcustom/android/Gallery;->p:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcustom/android/Gallery;->r:I

    return v0
.end method

.method final d(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Lcustom/android/Gallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 411
    :cond_0
    if-gez p1, :cond_2

    const/4 v0, 0x1

    .line 413
    :goto_1
    invoke-direct {p0, v0, p1}, Lcustom/android/Gallery;->a(ZI)I

    move-result v2

    .line 414
    if-eq v2, p1, :cond_1

    .line 416
    iget-object v3, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    invoke-static {v3, v1}, Lcustom/android/Gallery$FlingRunnable;->a(Lcustom/android/Gallery$FlingRunnable;Z)V

    .line 417
    invoke-direct {p0}, Lcustom/android/Gallery;->p()V

    .line 420
    :cond_1
    invoke-direct {p0, v2}, Lcustom/android/Gallery;->e(I)V

    .line 422
    invoke-direct {p0, v0}, Lcustom/android/Gallery;->a(Z)V

    .line 424
    if-eqz v0, :cond_3

    .line 426
    invoke-direct {p0}, Lcustom/android/Gallery;->s()V

    .line 432
    :goto_2
    invoke-direct {p0}, Lcustom/android/Gallery;->q()V

    .line 434
    invoke-virtual {p0}, Lcustom/android/Gallery;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 411
    goto :goto_1

    .line 429
    :cond_3
    invoke-direct {p0}, Lcustom/android/Gallery;->r()V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1117
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1060
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1063
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    return-void
.end method

.method final e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 636
    iget-object v0, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 637
    invoke-virtual {p0}, Lcustom/android/Gallery;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcustom/android/Gallery;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcustom/android/Gallery;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 639
    iget-boolean v2, p0, Lcustom/android/Gallery;->m:Z

    if-eqz v2, :cond_0

    .line 640
    invoke-virtual {p0}, Lcustom/android/Gallery;->m()V

    .line 644
    :cond_0
    iget v2, p0, Lcustom/android/Gallery;->r:I

    if-nez v2, :cond_1

    .line 645
    invoke-virtual {p0}, Lcustom/android/Gallery;->c()V

    .line 685
    :goto_0
    return-void

    .line 650
    :cond_1
    iget v2, p0, Lcustom/android/Gallery;->n:I

    if-ltz v2, :cond_2

    .line 651
    iget v2, p0, Lcustom/android/Gallery;->n:I

    invoke-virtual {p0, v2}, Lcustom/android/Gallery;->b(I)V

    .line 655
    :cond_2
    invoke-virtual {p0}, Lcustom/android/Gallery;->d()V

    .line 659
    invoke-virtual {p0}, Lcustom/android/Gallery;->detachAllViewsFromParent()V

    .line 667
    iget v2, p0, Lcustom/android/Gallery;->p:I

    iput v2, p0, Lcustom/android/Gallery;->f:I

    .line 668
    iget v2, p0, Lcustom/android/Gallery;->p:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v4, v4, v3}, Lcustom/android/Gallery;->a(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 671
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 672
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 674
    invoke-direct {p0}, Lcustom/android/Gallery;->s()V

    .line 675
    invoke-direct {p0}, Lcustom/android/Gallery;->r()V

    .line 677
    invoke-virtual {p0}, Lcustom/android/Gallery;->invalidate()V

    .line 678
    invoke-virtual {p0}, Lcustom/android/Gallery;->n()V

    .line 680
    iput-boolean v4, p0, Lcustom/android/Gallery;->m:Z

    .line 681
    iput-boolean v4, p0, Lcustom/android/Gallery;->i:Z

    .line 682
    iget v0, p0, Lcustom/android/Gallery;->p:I

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->c(I)V

    .line 684
    invoke-direct {p0}, Lcustom/android/Gallery;->y()V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 375
    new-instance v0, Lcustom/android/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcustom/android/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 367
    new-instance v0, Lcustom/android/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcustom/android/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcustom/android/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 362
    new-instance v0, Lcustom/android/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcustom/android/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1265
    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    .line 1268
    if-gez v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return p2

    .line 1270
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1272
    goto :goto_0

    .line 1273
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1275
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 332
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 334
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    iget v0, p0, Lcustom/android/Gallery;->x:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcustom/android/Gallery;->K:Lcustom/android/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method final l()V
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    if-nez v0, :cond_0

    .line 573
    invoke-super {p0}, Lcustom/android/AbsSpinner;->l()V

    .line 575
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 967
    iput-boolean v2, p0, Lcustom/android/Gallery;->M:Z

    .line 969
    iget-object v0, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcustom/android/Gallery$FlingRunnable;->a(Z)V

    .line 972
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcustom/android/Gallery;->a(II)I

    move-result v0

    iput v0, p0, Lcustom/android/Gallery;->A:I

    .line 974
    iget v0, p0, Lcustom/android/Gallery;->A:I

    if-ltz v0, :cond_0

    .line 975
    iget v0, p0, Lcustom/android/Gallery;->A:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcustom/android/Gallery;->B:Landroid/view/View;

    .line 976
    iget-object v0, p0, Lcustom/android/Gallery;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 980
    :cond_0
    iput-boolean v2, p0, Lcustom/android/Gallery;->L:Z

    .line 983
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 905
    iget-boolean v0, p0, Lcustom/android/Gallery;->G:Z

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcustom/android/Gallery;->D:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 912
    iget-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcustom/android/Gallery;->I:Z

    .line 916
    :cond_0
    iget-object v0, p0, Lcustom/android/Gallery;->C:Lcustom/android/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcustom/android/Gallery$FlingRunnable;->a(I)V

    .line 918
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1284
    invoke-super {p0, p1, p2, p3}, Lcustom/android/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1291
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1295
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1126
    sparse-switch p1, :sswitch_data_0

    .line 1146
    :goto_0
    invoke-super {p0, p1, p2}, Lcustom/android/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1129
    :sswitch_0
    invoke-direct {p0}, Lcustom/android/Gallery;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1135
    :sswitch_1
    invoke-direct {p0}, Lcustom/android/Gallery;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcustom/android/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1142
    :sswitch_2
    iput-boolean v0, p0, Lcustom/android/Gallery;->J:Z

    goto :goto_0

    .line 1126
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1151
    sparse-switch p1, :sswitch_data_0

    .line 1178
    invoke-super {p0, p1, p2}, Lcustom/android/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1155
    :sswitch_0
    iget-boolean v0, p0, Lcustom/android/Gallery;->J:Z

    if-eqz v0, :cond_0

    .line 1156
    iget v0, p0, Lcustom/android/Gallery;->r:I

    if-lez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcustom/android/Gallery;->F:Landroid/view/View;

    invoke-direct {p0, v0}, Lcustom/android/Gallery;->d(Landroid/view/View;)V

    .line 1159
    new-instance v0, Lcustom/android/Gallery$2;

    invoke-direct {v0, p0}, Lcustom/android/Gallery$2;-><init>(Lcustom/android/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcustom/android/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1165
    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    .line 1166
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcustom/android/Gallery;->p:I

    iget-object v2, p0, Lcustom/android/Gallery;->a:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcustom/android/Gallery;->p:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcustom/android/Gallery;->a(Landroid/view/View;IJ)Z

    .line 1172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->J:Z

    .line 1174
    const/4 v0, 0x1

    goto :goto_0

    .line 1151
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iget-boolean v0, p0, Lcustom/android/Gallery;->M:Z

    if-nez v0, :cond_0

    .line 382
    invoke-super/range {p0 .. p5}, Lcustom/android/AbsSpinner;->onLayout(ZIIII)V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcustom/android/Gallery;->k:Z

    .line 389
    invoke-virtual {p0}, Lcustom/android/Gallery;->e()V

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/Gallery;->k:Z

    .line 392
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 1010
    iget v0, p0, Lcustom/android/Gallery;->A:I

    if-gez v0, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->performHapticFeedback(I)Z

    .line 1015
    iget v0, p0, Lcustom/android/Gallery;->A:I

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->a(I)J

    move-result-wide v0

    .line 1016
    iget-object v2, p0, Lcustom/android/Gallery;->B:Landroid/view/View;

    iget v3, p0, Lcustom/android/Gallery;->A:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcustom/android/Gallery;->b(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 937
    invoke-virtual {p0}, Lcustom/android/Gallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 941
    iget-boolean v0, p0, Lcustom/android/Gallery;->G:Z

    if-nez v0, :cond_2

    .line 942
    iget-boolean v0, p0, Lcustom/android/Gallery;->L:Z

    if-eqz v0, :cond_1

    .line 948
    iget-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcustom/android/Gallery;->I:Z

    .line 949
    :cond_0
    iget-object v0, p0, Lcustom/android/Gallery;->D:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcustom/android/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 957
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->d(I)V

    .line 959
    iput-boolean v4, p0, Lcustom/android/Gallery;->L:Z

    .line 960
    return v3

    .line 953
    :cond_2
    iget-boolean v0, p0, Lcustom/android/Gallery;->I:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcustom/android/Gallery;->I:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    .line 883
    iget v0, p0, Lcustom/android/Gallery;->A:I

    if-ltz v0, :cond_2

    .line 886
    iget v0, p0, Lcustom/android/Gallery;->A:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcustom/android/Gallery;->f(I)Z

    .line 889
    iget-boolean v0, p0, Lcustom/android/Gallery;->H:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcustom/android/Gallery;->A:I

    iget v1, p0, Lcustom/android/Gallery;->p:I

    if-ne v0, v1, :cond_1

    .line 890
    :cond_0
    iget-object v0, p0, Lcustom/android/Gallery;->B:Landroid/view/View;

    iget v1, p0, Lcustom/android/Gallery;->A:I

    iget-object v2, p0, Lcustom/android/Gallery;->a:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcustom/android/Gallery;->A:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcustom/android/Gallery;->a(Landroid/view/View;IJ)Z

    .line 894
    :cond_1
    const/4 v0, 0x1

    .line 897
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 865
    iget-object v0, p0, Lcustom/android/Gallery;->z:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 867
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 868
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 870
    invoke-direct {p0}, Lcustom/android/Gallery;->t()V

    .line 875
    :cond_0
    :goto_0
    return v0

    .line 871
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 872
    invoke-direct {p0}, Lcustom/android/Gallery;->u()V

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput p1, p0, Lcustom/android/Gallery;->w:I

    .line 304
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-boolean p1, p0, Lcustom/android/Gallery;->G:Z

    .line 278
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-boolean p1, p0, Lcustom/android/Gallery;->H:Z

    .line 291
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter

    .prologue
    .line 1257
    iget v0, p0, Lcustom/android/Gallery;->y:I

    if-eq v0, p1, :cond_0

    .line 1258
    iput p1, p0, Lcustom/android/Gallery;->y:I

    .line 1259
    invoke-virtual {p0}, Lcustom/android/Gallery;->requestLayout()V

    .line 1261
    :cond_0
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput p1, p0, Lcustom/android/Gallery;->v:I

    .line 315
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput p1, p0, Lcustom/android/Gallery;->x:F

    .line 326
    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcustom/android/Gallery;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcustom/android/Gallery;->p:I

    if-ltz v0, :cond_0

    .line 1086
    iget v0, p0, Lcustom/android/Gallery;->p:I

    iget v1, p0, Lcustom/android/Gallery;->f:I

    sub-int/2addr v0, v1

    .line 1087
    invoke-virtual {p0, v0}, Lcustom/android/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1088
    iget v1, p0, Lcustom/android/Gallery;->p:I

    iget-wide v2, p0, Lcustom/android/Gallery;->q:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcustom/android/Gallery;->b(Landroid/view/View;IJ)Z

    move-result v0

    .line 1091
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcustom/android/Gallery;->b(Landroid/view/View;)I

    move-result v0

    .line 1074
    if-gez v0, :cond_0

    .line 1075
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    .line 1078
    :cond_0
    iget-object v1, p0, Lcustom/android/Gallery;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1079
    invoke-direct {p0, p1, v0, v1, v2}, Lcustom/android/Gallery;->b(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method
