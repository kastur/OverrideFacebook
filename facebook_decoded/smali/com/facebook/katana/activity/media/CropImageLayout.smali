.class public Lcom/facebook/katana/activity/media/CropImageLayout;
.super Landroid/widget/RelativeLayout;
.source "CropImageLayout.java"


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Lcom/facebook/katana/activity/media/CropImageLayout$BlackoutView;

.field private e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

.field private f:Z

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/Rect;

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/katana/activity/media/CropImageLayout;->a:[I

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/katana/activity/media/CropImageLayout;->b:[I

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 27
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 182
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b()V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 188
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b()V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 194
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->b()V

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->g:F

    return p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->e()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private a(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v6, 0x1

    const/high16 v5, 0x4220

    .line 157
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->e()Landroid/graphics/RectF;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float p1, v2

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float p2, v2

    .line 164
    :cond_1
    add-float v2, p1, v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    sub-float p1, v2, v4

    .line 167
    :cond_2
    add-float v2, p2, v0

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float p2, v2, v4

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sub-float v3, p1, v5

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float v4, p2, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 174
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v6

    add-float v3, p1, v1

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-float v4, p2, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 175
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    add-float/2addr v1, p1

    sub-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-float v3, p2, v0

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v6}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 176
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    sub-float v2, p1, v5

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-float/2addr v0, p2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v6}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CropImageLayout;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CropImageLayout;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->h:F

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CropImageLayout;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/CropImageLayout;->setWillNotDraw(Z)V

    .line 59
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v2, Lcom/facebook/katana/activity/media/CropImageLayout$BlackoutView;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$BlackoutView;-><init>(Lcom/facebook/katana/activity/media/CropImageLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->d:Lcom/facebook/katana/activity/media/CropImageLayout$BlackoutView;

    .line 67
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->d:Lcom/facebook/katana/activity/media/CropImageLayout$BlackoutView;

    invoke-virtual {p0, v2, v0}, Lcom/facebook/katana/activity/media/CropImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    new-instance v3, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;-><init>(Lcom/facebook/katana/activity/media/CropImageLayout;Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 71
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/CropImageLayout;->addView(Landroid/view/View;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 77
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 79
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    add-int/lit8 v4, v1, 0x3

    rem-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 75
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    add-int/lit8 v4, v1, 0x1

    rem-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    .line 82
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    add-int/lit8 v4, v1, 0x3

    rem-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    goto :goto_2

    .line 86
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->k:Ljava/util/Map;

    .line 87
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 98
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 99
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v2, 0x2

    .line 100
    div-int/lit8 v5, v0, 0x4

    div-int/lit8 v2, v2, 0x4

    move v0, v1

    .line 101
    :goto_1
    iget-object v6, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 103
    iget-object v6, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v3

    sget-object v8, Lcom/facebook/katana/activity/media/CropImageLayout;->a:[I

    aget v8, v8, v0

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x28

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    sget-object v9, Lcom/facebook/katana/activity/media/CropImageLayout;->b:[I

    aget v9, v9, v0

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->invalidate()V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 131
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 133
    iget v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->i:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 134
    iget v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->j:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    .line 136
    iget v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    div-float/2addr v2, v3

    .line 137
    iget v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->j:I

    int-to-float v3, v3

    iget v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    div-float/2addr v3, v4

    .line 139
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    .line 140
    iget-object v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 142
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private e()Landroid/graphics/RectF;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 227
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 229
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 230
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->e()Landroid/graphics/RectF;

    move-result-object v0

    .line 207
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 208
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 209
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 210
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 211
    iget v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    mul-float/2addr v1, v4

    .line 212
    iget v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    mul-float/2addr v2, v4

    .line 213
    iget v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    mul-float/2addr v3, v4

    .line 214
    iget v4, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->m:F

    mul-float/2addr v0, v4

    .line 216
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v5, v1

    float-to-int v6, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 217
    return-object v4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 255
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 256
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 257
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 258
    packed-switch v1, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 262
    :pswitch_1
    iget-boolean v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->f:Z

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->e:[Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    array-length v6, v1

    :goto_2
    if-ge v0, v6, :cond_0

    aget-object v7, v1, v0

    .line 266
    invoke-virtual {v7, v5, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(FF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 267
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->k:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;

    invoke-virtual {v7}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v7}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-direct {v4, p0, v7, v5, v3}, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;-><init>(Lcom/facebook/katana/activity/media/CropImageLayout;Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;FF)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 269
    goto :goto_1

    .line 265
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 277
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->k:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    move v1, v0

    .line 282
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 284
    iget-object v3, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;

    .line 285
    if-eqz v0, :cond_2

    .line 286
    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->a(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    move-result-object v3

    .line 289
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->b(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;->c(Lcom/facebook/katana/activity/media/CropImageLayout$DragObject;)F

    move-result v0

    sub-float v0, v5, v0

    float-to-int v0, v0

    .line 291
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v2}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 292
    invoke-static {v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0, v2}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 293
    invoke-static {v3}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->b(Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;)Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v2}, Lcom/facebook/katana/activity/media/CropImageLayout$CornerView;->a(Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 282
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 295
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->f:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->g:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->h:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 298
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/CropImageLayout;->a(FF)V

    goto/16 :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->l:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->d()V

    .line 245
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CropImageLayout;->c()V

    .line 247
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->i:I

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->j:I

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CropImageLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    return-void
.end method
