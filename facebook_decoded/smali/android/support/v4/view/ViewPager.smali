.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Landroid/view/VelocityTracker;

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/support/v4/widget/EdgeEffectCompat;

.field private I:Landroid/support/v4/widget/EdgeEffectCompat;

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private O:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private P:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/view/PagerAdapter;

.field private f:I

.field private g:I

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Landroid/widget/Scroller;

.field private k:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    .line 100
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    .line 106
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 271
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->J:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    .line 272
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->J:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    .line 277
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 278
    return-void
.end method

.method private static a(F)F
    .locals 4
    .parameter

    .prologue
    .line 584
    const/high16 v0, 0x3f00

    sub-float v0, p0, v0

    .line 585
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 586
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(IFII)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->G:I

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->E:I

    if-le v0, v1, :cond_1

    .line 1564
    if-lez p3, :cond_0

    .line 1569
    :goto_0
    return p1

    .line 1564
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1566
    :cond_1
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 4
    .parameter

    .prologue
    .line 933
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 934
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 935
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    :goto_1
    return-object v0

    .line 933
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 939
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 298
    iget v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    if-ne v0, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput p1, p0, Landroid/support/v4/view/ViewPager;->P:I

    .line 303
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a(I)V

    goto :goto_0
.end method

.method private a(IFI)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1207
    iget v0, p0, Landroid/support/v4/view/ViewPager;->L:I

    if-lez v0, :cond_1

    .line 1208
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1209
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1211
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1212
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1213
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    .line 1214
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1215
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1216
    iget-boolean v8, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v8, :cond_4

    .line 1218
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1219
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1237
    :goto_1
    add-int/2addr v0, v4

    .line 1239
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1240
    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1213
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_0

    .line 1226
    :pswitch_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 1227
    goto :goto_1

    .line 1229
    :pswitch_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1231
    goto :goto_1

    .line 1233
    :pswitch_3
    sub-int v0, v5, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_1

    .line 1246
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a(IF)V

    .line 1249
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a(IF)V

    .line 1252
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    .line 1253
    return-void

    :cond_4
    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_2

    .line 1219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 647
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 648
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 649
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    .line 650
    if-gez p2, :cond_0

    .line 651
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 607
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 644
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 614
    sub-int v3, p1, v1

    .line 615
    rsub-int/lit8 v4, v2, 0x0

    .line 616
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 617
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 618
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 623
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->u:Z

    .line 624
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 626
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    .line 627
    div-int/lit8 v5, v0, 0x2

    .line 628
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 629
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-static {v6}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 632
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 634
    if-lez v6, :cond_2

    .line 635
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 640
    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 642
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 643
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float v0, v5, v0

    .line 638
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method private a(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1046
    add-int v3, p1, p3

    .line 1047
    if-lez p2, :cond_1

    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1049
    add-int v1, p2, p4

    .line 1050
    div-int v4, v0, v1

    .line 1051
    rem-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1052
    int-to-float v1, v4

    add-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1053
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1054
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->timePassed()I

    move-result v4

    sub-int v5, v0, v4

    .line 1057
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    iget v4, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v0, v3

    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1062
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 1063
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 406
    return-void
.end method

.method private a(IZZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 410
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_0

    .line 417
    :cond_3
    if-gez p1, :cond_6

    move p1, v1

    .line 422
    :cond_4
    :goto_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 423
    iget v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_5

    iget v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_7

    :cond_5
    move v2, v1

    .line 427
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 428
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v3, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    .line 427
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 419
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 420
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 431
    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, p1, :cond_9

    move v0, v3

    .line 432
    :goto_3
    iput p1, p0, Landroid/support/v4/view/ViewPager;->f:I

    .line 433
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    .line 435
    if-eqz p2, :cond_a

    .line 436
    invoke-direct {p0, v2, v1, p4}, Landroid/support/v4/view/ViewPager;->a(III)V

    .line 437
    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_8

    .line 438
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a()V

    .line 440
    :cond_8
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a()V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 431
    goto :goto_3

    .line 444
    :cond_a
    if-eqz v0, :cond_b

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_b

    .line 445
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a()V

    .line 447
    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_c

    .line 448
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->a()V

    .line 450
    :cond_c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 451
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1751
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1752
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1753
    iget v2, p0, Landroid/support/v4/view/ViewPager;->C:I

    if-ne v1, v2, :cond_0

    .line 1756
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1757
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1758
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1759
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1763
    :cond_0
    return-void

    .line 1756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1776
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->s:Z

    if-eq v0, p1, :cond_0

    .line 1777
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->s:Z

    .line 1788
    :cond_0
    return-void
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1839
    const/4 v0, 0x0

    .line 1840
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1861
    :cond_0
    :goto_0
    return v0

    .line 1843
    :sswitch_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 1846
    :sswitch_1
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 1849
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1852
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1853
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 1854
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 1841
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1802
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 1803
    check-cast v6, Landroid/view/ViewGroup;

    .line 1804
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1805
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 1806
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1808
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 1811
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1812
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1821
    :cond_0
    :goto_1
    return v2

    .line 1808
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 1821
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .locals 2
    .parameter

    .prologue
    .line 944
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 945
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 946
    :cond_0
    const/4 v0, 0x0

    .line 950
    :goto_1
    return-object v0

    .line 948
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 950
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v0, v1

    .line 1181
    div-int v1, p1, v0

    .line 1182
    rem-int v2, p1, v0

    .line 1183
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 1185
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->K:Z

    .line 1186
    invoke-direct {p0, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1187
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_0
    return-void
.end method

.method private c(I)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 1865
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1866
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1868
    :cond_0
    const/4 v1, 0x0

    .line 1870
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1872
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 1873
    if-ne p1, v3, :cond_3

    .line 1876
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 1877
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v0

    .line 1897
    :goto_0
    if-eqz v0, :cond_1

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 1900
    :cond_1
    return v0

    .line 1879
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1881
    :cond_3
    if-ne p1, v4, :cond_9

    .line 1884
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v1, v0, :cond_8

    .line 1885
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1890
    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1892
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v0

    goto :goto_0

    .line 1893
    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 1895
    :cond_8
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d()[I
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 282
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    .line 286
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 287
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 288
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->E:I

    .line 289
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->F:I

    .line 290
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 291
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 293
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 294
    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:I

    .line 295
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 355
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 357
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 354
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1

    .line 821
    :cond_0
    return-void

    .line 728
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->t:Z

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;)V

    .line 742
    iget v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 743
    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 744
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v1

    .line 745
    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v2

    move v3, v4

    .line 751
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 752
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 753
    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-lt v8, v5, :cond_2

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v8, v7, :cond_3

    :cond_2
    iget-boolean v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    if-nez v8, :cond_3

    .line 755
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    add-int/lit8 v1, v1, -0x1

    .line 757
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move v3, v1

    .line 773
    :goto_1
    iget v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 751
    add-int/lit8 v0, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_3
    if-ge v3, v7, :cond_f

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-le v8, v5, :cond_f

    .line 762
    add-int/lit8 v3, v3, 0x1

    .line 763
    if-ge v3, v5, :cond_4

    move v3, v5

    .line 766
    :cond_4
    :goto_2
    if-gt v3, v7, :cond_f

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    if-ge v3, v8, :cond_f

    .line 768
    invoke-direct {p0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 777
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    .line 778
    :goto_3
    if-ge v0, v7, :cond_8

    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 780
    if-le v0, v5, :cond_7

    .line 781
    :goto_4
    if-gt v0, v7, :cond_8

    .line 783
    invoke-direct {p0, v0, v4}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v4

    .line 777
    goto :goto_3

    :cond_7
    move v0, v5

    .line 780
    goto :goto_4

    :cond_8
    move v1, v2

    .line 796
    :goto_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 797
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, v3, :cond_c

    .line 798
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 802
    :goto_6
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v1, p0, v3, v0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 804
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;)V

    .line 806
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 809
    :cond_9
    if-eqz v6, :cond_a

    iget v0, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, v1, :cond_0

    .line 810
    :cond_a
    :goto_8
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 811
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    .line 813
    if-eqz v1, :cond_b

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v1, v3, :cond_b

    .line 814
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 796
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_d
    move-object v0, v6

    .line 802
    goto :goto_7

    :cond_e
    move-object v0, v6

    goto :goto_6

    :cond_f
    move v3, v1

    goto/16 :goto_1
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1256
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->u:Z

    .line 1257
    if-eqz v0, :cond_2

    .line 1259
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1260
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1261
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1262
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1263
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1264
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1265
    if-ne v1, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1266
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1268
    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1270
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->t:Z

    .line 1271
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->u:Z

    move v1, v2

    move v3, v0

    .line 1272
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1273
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1274
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    if-eqz v4, :cond_3

    .line 1275
    const/4 v3, 0x1

    .line 1276
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->c:Z

    .line 1272
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1279
    :cond_4
    if-eqz v3, :cond_5

    .line 1280
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 1282
    :cond_5
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1766
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1767
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1769
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    .line 1773
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1904
    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-lez v1, :cond_0

    .line 1905
    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1912
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1913
    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method final a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 473
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 474
    return-object v0
.end method

.method final a(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 375
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1924
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1926
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 1928
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 1929
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1930
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1931
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1932
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1933
    if-eqz v4, :cond_0

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_0

    .line 1934
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1929
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1944
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1950
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1961
    :cond_3
    :goto_1
    return-void

    .line 1953
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1957
    :cond_5
    if-eqz p1, :cond_3

    .line 1958
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1971
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1972
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1973
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1974
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1975
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v2, v3, :cond_0

    .line 1976
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1971
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1980
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 911
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 912
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    .line 913
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->r:Z

    if-eqz v2, :cond_1

    .line 914
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 918
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 930
    :goto_1
    return-void

    .line 920
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    return v0
.end method

.method final c()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 660
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 661
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 665
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 666
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->e()I

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 660
    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    sget-object v2, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    if-eqz v1, :cond_2

    .line 714
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 717
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2049
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1160
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1161
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1162
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1164
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1165
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1166
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1177
    :goto_0
    return-void

    .line 1176
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2022
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2023
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2024
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2025
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2026
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2027
    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2029
    const/4 v0, 0x1

    .line 2034
    :cond_0
    return v0

    .line 2023
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1574
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1575
    const/4 v0, 0x0

    .line 1577
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;)I

    move-result v2

    .line 1578
    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 1581
    :cond_0
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1583
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1585
    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1586
    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1587
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 1588
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 1589
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1591
    :cond_1
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1593
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1594
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1595
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v5, :cond_2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v1

    .line 1597
    :cond_2
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v6, v3

    mul-int/2addr v1, v6

    iget v6, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1600
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->a(II)V

    .line 1601
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1602
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1609
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 1611
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1613
    :cond_4
    return-void

    .line 1605
    :cond_5
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->b()V

    .line 1606
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 573
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    .line 574
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 577
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2039
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2054
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 2044
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 955
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->J:Z

    .line 957
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 1617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1620
    iget v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1622
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 1623
    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v2, v1

    rem-int v2, v0, v2

    .line 1624
    if-eqz v2, :cond_0

    .line 1626
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1627
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->n:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/support/v4/view/ViewPager;->o:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1295
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1298
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1299
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1300
    iput v3, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1301
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    .line 1415
    :cond_1
    :goto_0
    return v2

    .line 1310
    :cond_2
    if-eqz v0, :cond_4

    .line 1311
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1313
    goto :goto_0

    .line 1315
    :cond_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-nez v1, :cond_1

    .line 1321
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1402
    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-nez v0, :cond_7

    .line 1405
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    .line 1408
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1415
    :cond_7
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    goto :goto_0

    .line 1332
    :sswitch_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1333
    if-eq v0, v3, :cond_5

    .line 1335
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1339
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1340
    iget v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float v1, v7, v1

    .line 1341
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1342
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1343
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1346
    float-to-int v3, v1

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1348
    iput v7, p0, Landroid/support/v4/view/ViewPager;->A:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->z:F

    .line 1349
    iput v9, p0, Landroid/support/v4/view/ViewPager;->B:F

    goto :goto_0

    .line 1352
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    cmpl-float v0, v8, v10

    if-lez v0, :cond_9

    .line 1354
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1355
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1356
    iput v7, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1357
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_1

    .line 1359
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_5

    .line 1365
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->x:Z

    goto :goto_1

    .line 1376
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:F

    .line 1378
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1380
    iget v0, p0, Landroid/support/v4/view/ViewPager;->P:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1382
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1383
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1384
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_1

    .line 1386
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 1387
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1388
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    goto/16 :goto_1

    .line 1398
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1321
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->r:Z

    .line 1071
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 1072
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->r:Z

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1075
    sub-int v10, p4, p2

    .line 1076
    sub-int v11, p5, p3

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1083
    const/4 v4, 0x0

    .line 1085
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_2

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1087
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_1

    .line 1088
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1090
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_0

    .line 1093
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1094
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1095
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1112
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1129
    :goto_2
    add-int/2addr v7, v12

    .line 1130
    add-int/lit8 v4, v4, 0x1

    .line 1131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    move v1, v4

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1085
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1101
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1102
    goto :goto_1

    .line 1104
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1106
    goto :goto_1

    .line 1108
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1109
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1118
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1119
    goto :goto_2

    .line 1121
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1123
    goto :goto_2

    .line 1125
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1134
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1135
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v7, v10

    iget v1, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    mul-int/2addr v1, v7

    .line 1136
    add-int/2addr v1, v6

    .line 1141
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v13, v1, v2, v7, v14}, Landroid/view/View;->layout(IIII)V

    :cond_1
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto :goto_3

    .line 1147
    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->n:I

    .line 1148
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->o:I

    .line 1149
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->L:I

    .line 1150
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->J:Z

    .line 1151
    return-void

    .line 1095
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 970
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 971
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 978
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 979
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_7

    .line 980
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 981
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    .line 982
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 983
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_b

    .line 984
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v9, v1, 0x7

    .line 985
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 986
    const-string v1, "ViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "gravity: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " vgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/high16 v1, -0x8000

    .line 988
    const/high16 v0, -0x8000

    .line 989
    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    const/16 v5, 0x50

    if-ne v4, v5, :cond_3

    :cond_0
    const/4 v4, 0x1

    move v5, v4

    .line 990
    :goto_1
    const/4 v4, 0x3

    if-eq v9, v4, :cond_1

    const/4 v4, 0x5

    if-ne v9, v4, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 992
    :goto_2
    if-eqz v5, :cond_5

    .line 993
    const/high16 v1, 0x4000

    .line 998
    :cond_2
    :goto_3
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 999
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1000
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1002
    if-eqz v5, :cond_6

    .line 1003
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    move v1, v3

    .line 979
    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 989
    :cond_3
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    .line 990
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 994
    :cond_5
    if-eqz v4, :cond_2

    .line 995
    const/high16 v0, 0x4000

    goto :goto_3

    .line 1004
    :cond_6
    if-eqz v4, :cond_b

    .line 1005
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    move v1, v0

    move v0, v2

    goto :goto_4

    .line 1011
    :cond_7
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    .line 1012
    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->r:Z

    .line 1016
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->r:Z

    .line 1020
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1021
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_a

    .line 1022
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1023
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    .line 1027
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1028
    if-eqz v0, :cond_8

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_9

    .line 1029
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 1021
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1033
    :cond_a
    return-void

    :cond_b
    move v0, v2

    move v1, v3

    goto :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1991
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1992
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2001
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2002
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2004
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2005
    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v6, v7, :cond_1

    .line 2006
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2012
    :goto_1
    return v2

    .line 1997
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 1999
    goto :goto_0

    .line 2001
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2012
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 888
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 904
    :goto_0
    return-void

    .line 893
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 894
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->d()V

    .line 898
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 900
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->g:I

    .line 901
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 902
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 877
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 878
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 879
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    .line 880
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->c()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 883
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1040
    if-eq p1, p3, :cond_0

    .line 1041
    iget v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1043
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return v0

    .line 1433
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    .line 1439
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    .line 1441
    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1446
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1555
    :cond_3
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_4

    .line 1556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_4
    move v0, v4

    .line 1558
    goto :goto_0

    .line 1452
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1456
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    goto :goto_1

    .line 1460
    :pswitch_2
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-nez v1, :cond_5

    .line 1461
    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1462
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1463
    iget v3, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1464
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1465
    iget v5, p0, Landroid/support/v4/view/ViewPager;->B:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1467
    iget v5, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    cmpl-float v1, v3, v1

    if-lez v1, :cond_5

    .line 1469
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 1470
    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1471
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1472
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1475
    :cond_5
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_3

    .line 1477
    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1479
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1480
    iget v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float/2addr v2, v1

    .line 1481
    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1482
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 1483
    add-float v3, v1, v2

    .line 1484
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1485
    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int v6, v5, v1

    .line 1487
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->a()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 1488
    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1489
    iget v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    .line 1491
    cmpg-float v8, v3, v1

    if-gez v8, :cond_7

    .line 1492
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_6

    .line 1493
    neg-float v0, v3

    .line 1494
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v0

    :cond_6
    move v9, v1

    move v1, v0

    move v0, v9

    .line 1505
    :goto_2
    iget v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1506
    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1507
    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    move v0, v1

    .line 1508
    goto/16 :goto_1

    .line 1497
    :cond_7
    cmpl-float v1, v3, v2

    if-lez v1, :cond_9

    .line 1498
    mul-int v1, v7, v6

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_8

    .line 1499
    sub-float v0, v3, v2

    .line 1500
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->a(F)Z

    move-result v0

    :cond_8
    move v1, v0

    move v0, v2

    .line 1502
    goto :goto_2

    .line 1511
    :pswitch_3
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_3

    .line 1512
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    .line 1513
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1516
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->t:Z

    .line 1517
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v1, v2

    .line 1518
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1519
    div-int v3, v2, v1

    .line 1520
    rem-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1521
    iget v2, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1523
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1524
    iget v5, p0, Landroid/support/v4/view/ViewPager;->z:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 1525
    invoke-direct {p0, v3, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v1

    .line 1527
    invoke-direct {p0, v1, v4, v4, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 1529
    iput v6, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1530
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V

    .line 1531
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1532
    goto/16 :goto_1

    .line 1535
    :pswitch_4
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_3

    .line 1536
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-direct {p0, v0, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 1537
    iput v6, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1538
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V

    .line 1539
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    .line 1543
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1544
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1545
    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    .line 1546
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    goto/16 :goto_1

    .line 1550
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1551
    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    goto/16 :goto_1

    :cond_9
    move v1, v0

    move v0, v3

    goto/16 :goto_2

    .line 1446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 317
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 319
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->b:I

    iget-object v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->b(Landroid/view/ViewGroup;)V

    .line 322
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    .line 324
    iput v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    .line 325
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 328
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    .line 329
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    .line 331
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v1, :cond_2

    .line 333
    new-instance v1, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 335
    :cond_2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/PagerAdapter;->a(Landroid/database/DataSetObserver;)V

    .line 336
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->t:Z

    .line 337
    iget v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    if-ltz v1, :cond_5

    .line 338
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->d()V

    .line 339
    iget v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    .line 341
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 342
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    .line 348
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 351
    :cond_4
    return-void

    .line 344
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 385
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->t:Z

    .line 386
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->J:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 387
    return-void

    :cond_0
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->t:Z

    .line 397
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 398
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3
    .parameter

    .prologue
    .line 506
    if-gtz p1, :cond_0

    .line 507
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 p1, 0x1

    .line 511
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    if-eq p1, v0, :cond_1

    .line 512
    iput p1, p0, Landroid/support/v4/view/ViewPager;->v:I

    .line 513
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    .line 515
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->M:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 463
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter

    .prologue
    .line 526
    iget v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 527
    iput p1, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 530
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 533
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 552
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 554
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
