.class public Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;
.super Landroid/view/ViewGroup;
.source "CreateThreadCustomLayout.java"


# instance fields
.field private a:Lcom/facebook/orca/compose/ComposeMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a:Lcom/facebook/orca/compose/ComposeMode;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a:Lcom/facebook/orca/compose/ComposeMode;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a:Lcom/facebook/orca/compose/ComposeMode;

    .line 32
    return-void
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 133
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 142
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 152
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 165
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildCount()I

    move-result v0

    .line 90
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be two children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingLeft()I

    move-result v4

    .line 95
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getWidth()I

    .line 97
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingTop()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getHeight()I

    move-result v5

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x0

    move v10, v0

    move v0, v2

    move v2, v10

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    add-int v3, v6, v0

    .line 102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 109
    :cond_1
    const/4 v2, 0x0

    sub-int v0, v5, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 112
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v2, v0, :cond_3

    .line 113
    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 117
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 118
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    .line 120
    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 122
    add-int/2addr v1, v3

    .line 125
    :cond_2
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v9

    .line 126
    invoke-static {v5, v8, v1, v6, v7}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a(Landroid/view/View;IIII)V

    .line 127
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v7

    add-int/2addr v1, v0

    .line 112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 129
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildCount()I

    move-result v0

    .line 42
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be two children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move v5, v3

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v8, v0, 0x0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 63
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v7, p1, v0}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    move v1, v0

    move v0, v6

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 82
    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->setMeasuredDimension(II)V

    .line 85
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, v7

    move v2, p1

    move v4, p2

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 70
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v8

    goto :goto_0
.end method

.method public setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->a:Lcom/facebook/orca/compose/ComposeMode;

    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/CreateThreadCustomLayout;->requestLayout()V

    .line 37
    return-void
.end method
