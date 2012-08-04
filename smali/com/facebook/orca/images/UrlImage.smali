.class public Lcom/facebook/orca/images/UrlImage;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "UrlImage.java"


# static fields
.field public static final a:Lcom/facebook/orca/images/FetchImageParams;

.field private static final b:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageDeferrable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/facebook/orca/activity/ScrollingActivityListener;

.field private f:Lcom/facebook/orca/images/ImageCache;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/ImageView$ScaleType;

.field private k:Landroid/widget/ImageView$ScaleType;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Lcom/facebook/orca/images/FetchImageParams;

.field private o:Lcom/facebook/orca/images/MultiFetchImageParams;

.field private p:Lcom/facebook/orca/images/FetchImageParams;

.field private q:Z

.field private r:Lcom/facebook/orca/common/async/Deferred;

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/orca/images/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/images/UrlImage;->b:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 67
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 99
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->d:Landroid/view/LayoutInflater;

    .line 100
    const-class v0, Lcom/facebook/orca/images/FetchImageDeferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->c:Ljavax/inject/Provider;

    .line 101
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Lcom/facebook/orca/images/ImageCache;

    .line 103
    sget-object v0, Lcom/facebook/orca/R$styleable;->UrlImage:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 106
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->u:Z

    .line 107
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->u:Z

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/orca/R$layout;->orca_url_image_gallery:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    :goto_0
    sget v0, Lcom/facebook/orca/R$id;->url_image_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    .line 113
    sget v0, Lcom/facebook/orca/R$id;->url_image_placeholder_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/facebook/orca/R$id;->url_image_progress:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    .line 116
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    .line 121
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 122
    if-ltz v0, :cond_1

    .line 123
    sget-object v2, Lcom/facebook/orca/images/UrlImage;->b:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 126
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 128
    if-ltz v0, :cond_2

    .line 129
    sget-object v2, Lcom/facebook/orca/images/UrlImage;->b:[Landroid/widget/ImageView$ScaleType;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    .line 131
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->q:Z

    .line 132
    const/4 v0, 0x1

    sget v2, Lcom/facebook/orca/R$drawable;->orca_photo_downloading:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    iget v2, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->u:Z

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->bringChildToFront(Landroid/view/View;)V

    .line 143
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    new-instance v0, Lcom/facebook/orca/images/UrlImage$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/images/UrlImage$1;-><init>(Lcom/facebook/orca/images/UrlImage;)V

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->e:Lcom/facebook/orca/activity/ScrollingActivityListener;

    .line 151
    instance-of v0, p1, Lcom/facebook/orca/activity/ScrollingActivity;

    if-eqz v0, :cond_4

    .line 152
    check-cast p1, Lcom/facebook/orca/activity/ScrollingActivity;

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->e:Lcom/facebook/orca/activity/ScrollingActivityListener;

    invoke-interface {p1, v0}, Lcom/facebook/orca/activity/ScrollingActivity;->a(Lcom/facebook/orca/activity/ScrollingActivityListener;)V

    .line 155
    :cond_4
    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->d:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/orca/R$layout;->orca_url_image:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 477
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->u:Z

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    if-ne v3, p1, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/UrlImage;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 486
    goto :goto_1

    :cond_4
    move v0, v2

    .line 487
    goto :goto_2

    :cond_5
    move v1, v2

    .line 488
    goto :goto_3
.end method

.method static synthetic a(Lcom/facebook/orca/images/UrlImage;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/UrlImage;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    .line 446
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v1, :cond_1

    .line 447
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 451
    :goto_0
    if-eqz v1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    check-cast v0, Lcom/facebook/orca/photos/view/ImageViewTouchBase;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/view/ImageViewTouchBase;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 459
    :cond_0
    return-void

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    if-eqz v1, :cond_3

    .line 449
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->b()Lcom/facebook/orca/images/UrlImageCompositor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/orca/images/UrlImageCompositor;->a(Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_c

    .line 359
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_c

    .line 361
    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->f:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_c

    .line 364
    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 370
    :goto_0
    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/orca/images/UrlImage;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->e()Ljava/util/List;

    move-result-object v3

    .line 379
    if-eqz v3, :cond_5

    .line 381
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 382
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    .line 383
    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_2

    .line 385
    iget-object v6, p0, Lcom/facebook/orca/images/UrlImage;->f:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v6, v0}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_4

    .line 387
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 373
    :cond_3
    iget v0, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    iget v3, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 394
    :goto_3
    if-eqz v0, :cond_5

    .line 395
    invoke-direct {p0, v4}, Lcom/facebook/orca/images/UrlImage;->a(Ljava/util/List;)V

    .line 441
    :goto_4
    return-void

    .line 400
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->s:Z

    if-eqz v0, :cond_7

    .line 401
    iput-boolean v2, p0, Lcom/facebook/orca/images/UrlImage;->t:Z

    .line 402
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->q:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    :goto_5
    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    goto :goto_5

    .line 406
    :cond_7
    iput-boolean v1, p0, Lcom/facebook/orca/images/UrlImage;->t:Z

    .line 407
    if-eqz v3, :cond_a

    .line 408
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 409
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    .line 410
    new-instance v4, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v4}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    .line 411
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/images/FetchImageDeferrable;

    .line 412
    invoke-virtual {v4, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 413
    invoke-virtual {v4, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    .line 414
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 417
    :cond_8
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->q:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ProgressBar;

    :goto_7
    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 421
    new-instance v0, Lcom/facebook/orca/common/async/DeferredAggregator;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/DeferredAggregator;-><init>()V

    .line 422
    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/DeferredAggregator;->a(Ljava/util/List;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    .line 423
    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    .line 424
    new-instance v1, Lcom/facebook/orca/images/UrlImage$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/UrlImage$2;-><init>(Lcom/facebook/orca/images/UrlImage;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 431
    new-instance v1, Lcom/facebook/orca/images/UrlImage$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/UrlImage$3;-><init>(Lcom/facebook/orca/images/UrlImage;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    goto :goto_4

    .line 417
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    goto :goto_7

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->r:Lcom/facebook/orca/common/async/Deferred;

    .line 463
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 464
    return-void
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/facebook/orca/images/UrlImage;->s:Z

    .line 345
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->t:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    .line 348
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 160
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->u:Z

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    .line 163
    :cond_0
    return-void
.end method

.method public setImageParams(Landroid/net/Uri;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0
.end method

.method public setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {v0, p1, p2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method

.method public setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    .line 214
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    .line 216
    :cond_0
    return-void
.end method

.method public setMultiFetchImageParams(Lcom/facebook/orca/images/MultiFetchImageParams;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->n:Lcom/facebook/orca/images/FetchImageParams;

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/MultiFetchImageParams;->a(Lcom/facebook/orca/images/MultiFetchImageParams;Lcom/facebook/orca/images/MultiFetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/images/MultiFetchImageParams;

    .line 238
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    .line 240
    :cond_0
    return-void
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    .line 304
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->m:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method public setPlaceHolderResourceId(I)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iput p1, p0, Lcom/facebook/orca/images/UrlImage;->l:I

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->m:Landroid/graphics/drawable/Drawable;

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    return-void
.end method

.method public setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->k:Landroid/widget/ImageView$ScaleType;

    .line 333
    return-void
.end method

.method public setPlaceholderBackgroundResourceId(I)V
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 325
    return-void
.end method

.method public setPlaceholderImageParams(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/FetchImageParams;

    .line 264
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    .line 266
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 275
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/facebook/orca/images/UrlImage;->q:Z

    .line 341
    return-void
.end method
