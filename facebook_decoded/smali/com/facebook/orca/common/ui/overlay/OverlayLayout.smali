.class public Lcom/facebook/orca/common/ui/overlay/OverlayLayout;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "OverlayLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private static a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 155
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 160
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method protected final a(IIIILandroid/view/View;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    .line 100
    iget-boolean v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    if-nez v1, :cond_1

    .line 101
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomViewGroup;->a(IIIILandroid/view/View;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 106
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 114
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 115
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 117
    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 120
    iget v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 121
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 122
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 126
    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 127
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int p3, v5, v6

    .line 138
    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_7

    .line 139
    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int p1, v1, v0

    .line 150
    :cond_3
    :goto_2
    add-int v0, p1, v3

    add-int v1, p3, v4

    invoke-virtual {p5, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 128
    :cond_4
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 129
    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v5, v6

    goto :goto_1

    .line 130
    :cond_5
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 131
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->topMargin:I

    add-int p3, v5, v6

    goto :goto_1

    .line 132
    :cond_6
    and-int/lit8 v5, v1, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    .line 133
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iget v6, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->bottomMargin:I

    sub-int p3, v5, v6

    goto :goto_1

    .line 140
    :cond_7
    and-int/lit8 v5, v1, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_8

    .line 141
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int p1, v1, v0

    goto :goto_2

    .line 142
    :cond_8
    and-int/lit8 v5, v1, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_9

    .line 143
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->leftMargin:I

    add-int p1, v1, v0

    goto :goto_2

    .line 144
    :cond_9
    and-int/lit16 v1, v1, 0x80

    const/16 v5, 0x80

    if-ne v1, v5, :cond_3

    .line 145
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget v0, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->rightMargin:I

    sub-int p1, v1, v0

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    instance-of v0, p1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x14

    .line 82
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 83
    const-string v0, "Overlayout.dispatchDraw"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v0

    .line 88
    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 89
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v2

    .line 88
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 89
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 93
    :goto_1
    throw v1

    .line 91
    :cond_1
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a()Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/util/AttributeSet;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-static {p1}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x14

    .line 66
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 67
    const-string v0, "Overlayout.onLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomViewGroup;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v0

    .line 72
    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 73
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v2

    .line 72
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 73
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 77
    :goto_1
    throw v1

    .line 75
    :cond_1
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x14

    .line 50
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 51
    const-string v0, "Overlayout.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v0

    .line 56
    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 57
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    move-result-wide v2

    .line 56
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 57
    const-string v0, "orca:OverlayLayout"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 61
    :goto_1
    throw v1

    .line 59
    :cond_1
    invoke-static {}, Lcom/facebook/orca/debug/Tracer;->a()V

    goto :goto_1
.end method
