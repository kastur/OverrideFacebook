.class public Lcom/facebook/orca/common/ui/widgets/AnchorableToast;
.super Ljava/lang/Object;
.source "AnchorableToast.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private e:Landroid/widget/PopupWindow;

.field private f:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x30

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->k:J

    .line 42
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->b:Landroid/view/LayoutInflater;

    .line 44
    const/16 v0, 0x21

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    .line 45
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 96
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->c:Landroid/view/View;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 99
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    sget v2, Lcom/facebook/orca/R$drawable;->orca_anchorable_toast_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    .line 103
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->g:I

    .line 107
    iget-boolean v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->i:Z

    if-eqz v1, :cond_0

    .line 108
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->g:I

    const/high16 v3, 0x4000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 111
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 116
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 117
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    const v2, 0x1030004

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 120
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    if-ne v1, v5, :cond_3

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    aget v2, v0, v4

    aget v0, v0, v6

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, p1, v5, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 127
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 128
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$1;-><init>(Lcom/facebook/orca/common/ui/widgets/AnchorableToast;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->f:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->f:Lcom/facebook/orca/common/async/CancellableRunnable;

    iget-wide v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->k:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_2
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$2;-><init>(Lcom/facebook/orca/common/ui/widgets/AnchorableToast;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    return-void

    .line 122
    :cond_3
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    aget v2, v0, v4

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, p1, v5, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/AnchorableToast;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 151
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 152
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    aget v2, v0, v3

    aget v0, v0, v4

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->g:I

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    aget v2, v0, v3

    aget v0, v0, v4

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->g:I

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->h:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 161
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->e:Landroid/widget/PopupWindow;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->f:Lcom/facebook/orca/common/async/CancellableRunnable;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->f:Lcom/facebook/orca/common/async/CancellableRunnable;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/CancellableRunnable;->a()V

    .line 165
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->f:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 171
    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    .line 61
    return-void
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 68
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->k:J

    .line 69
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    if-ne p3, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->b:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/orca/R$layout;->orca_toast_warning:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 80
    :goto_0
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->j:I

    const/16 v2, 0x50

    if-ne v0, v2, :cond_1

    .line 81
    sget v0, Lcom/facebook/orca/R$id;->toast_bottom_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_1
    sget v0, Lcom/facebook/orca/R$id;->anchorable_toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0, p1, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Landroid/view/View;)V

    .line 91
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->b:Landroid/view/LayoutInflater;

    sget v2, Lcom/facebook/orca/R$layout;->orca_toast_normal:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 84
    :cond_1
    sget v0, Lcom/facebook/orca/R$id;->toast_top_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->i:Z

    .line 53
    return-void
.end method
