.class public Lcom/facebook/orca/activity/CustomViewGroup;
.super Landroid/view/ViewGroup;
.source "CustomViewGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 162
    return-void
.end method

.method protected a(IIIILandroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 83
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 88
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 91
    and-int/lit8 v4, v3, 0x7

    .line 92
    and-int/lit8 v3, v3, 0x70

    .line 94
    packed-switch v4, :pswitch_data_0

    .line 106
    :pswitch_0
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    .line 109
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 121
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 125
    :cond_0
    :goto_1
    add-int v0, p1, v1

    add-int v1, p3, v2

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 126
    return-void

    .line 96
    :pswitch_1
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, v4

    .line 97
    goto :goto_0

    .line 99
    :pswitch_2
    sub-int v4, p2, p1

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int p1, v4, v5

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    sub-int v4, p2, v1

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int p1, v4, v5

    .line 104
    goto :goto_0

    .line 111
    :sswitch_0
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v0

    .line 112
    goto :goto_1

    .line 114
    :sswitch_1
    sub-int v3, p4, p3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v3, v0

    .line 116
    goto :goto_1

    .line 118
    :sswitch_2
    sub-int v3, p4, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v3, v0

    .line 119
    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final b(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 143
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 156
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildCount()I

    move-result v7

    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingLeft()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingRight()I

    move-result v2

    sub-int v2, v0, v2

    .line 67
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingTop()I

    move-result v3

    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    .line 70
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    .line 71
    invoke-virtual {p0, v6}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_0

    move-object v0, p0

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/activity/CustomViewGroup;->a(IIIILandroid/view/View;)V

    .line 70
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildCount()I

    move-result v9

    move v8, v3

    move v6, v3

    move v7, v3

    .line 40
    :goto_0
    if-ge v8, v9, :cond_0

    .line 41
    invoke-virtual {p0, v8}, Lcom/facebook/orca/activity/CustomViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/activity/CustomViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    :goto_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    .line 53
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    invoke-static {v0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/activity/CustomViewGroup;->setMeasuredDimension(II)V

    .line 58
    return-void

    :cond_1
    move v0, v6

    move v1, v7

    goto :goto_1
.end method
