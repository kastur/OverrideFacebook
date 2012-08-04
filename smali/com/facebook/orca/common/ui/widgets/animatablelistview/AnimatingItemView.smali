.class public Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "AnimatingItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo",
            "<*>;"
        }
    .end annotation
.end field

.field private b:F

.field private c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    .line 19
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    .line 19
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    .line 19
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    .line 37
    return-void
.end method

.method private a(F)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->requestLayout()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a(F)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildCount()I

    move-result v7

    .line 99
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingLeft()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 102
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingTop()I

    move-result v3

    .line 103
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 105
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    .line 106
    invoke-virtual {p0, v6}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_1

    .line 108
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    const/4 v8, 0x0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v8, v4, v3

    sub-int/2addr v0, v8

    .line 110
    sub-int/2addr v3, v0

    .line 111
    sub-int/2addr v4, v0

    :cond_0
    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a(IIIILandroid/view/View;)V

    .line 105
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildCount()I

    move-result v9

    move v8, v3

    move v6, v3

    move v7, v3

    .line 71
    :goto_0
    if-ge v8, v9, :cond_0

    .line 72
    invoke-virtual {p0, v8}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 71
    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 82
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    .line 84
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 89
    int-to-float v1, v1

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 90
    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->setMeasuredDimension(II)V

    .line 93
    return-void

    :cond_1
    move v0, v6

    move v1, v7

    goto :goto_1
.end method

.method public setItemInfo(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->b(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;)V

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->c:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo$AnimationOffsetListener;)V

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemInfo;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->requestLayout()V

    .line 56
    return-void

    .line 53
    :cond_1
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingItemView;->b:F

    goto :goto_0
.end method
