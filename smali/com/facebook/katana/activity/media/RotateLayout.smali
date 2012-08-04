.class public Lcom/facebook/katana/activity/media/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/facebook/katana/activity/media/Rotatable;


# instance fields
.field private a:I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/RotateLayout;->setBackgroundResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 93
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iget v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v6

    .line 103
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    iget v2, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 106
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 107
    aget v1, v0, v5

    aget v0, v0, v6

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 50
    sub-int v0, p4, p2

    .line 51
    sub-int v1, p5, p3

    .line 52
    iget v2, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    sparse-switch v2, :sswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 55
    :sswitch_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 59
    :sswitch_1
    iget-object v2, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    .line 67
    iget v1, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    .line 81
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/RotateLayout;->setMeasuredDimension(II)V

    .line 82
    return-void

    .line 70
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/facebook/katana/activity/media/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 71
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/facebook/katana/activity/media/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter

    .prologue
    .line 115
    rem-int/lit16 v0, p1, 0x168

    .line 116
    iget v1, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    if-ne v1, v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput v0, p0, Lcom/facebook/katana/activity/media/RotateLayout;->a:I

    .line 118
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
