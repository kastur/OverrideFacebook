.class public abstract Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;
.super Landroid/view/View;
.source "VariableTextLayoutView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Typeface;

.field private f:I

.field private g:Landroid/text/Layout$Alignment;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/text/Layout;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    .line 73
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    .line 73
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 88
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    .line 73
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 93
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method private static a(Landroid/text/Layout;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 334
    move v1, v0

    .line 335
    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 342
    sparse-switch v2, :sswitch_data_0

    move v1, v0

    .line 354
    :goto_1
    :sswitch_0
    return v1

    .line 347
    :sswitch_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 342
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(I)Landroid/text/Layout$Alignment;
    .locals 3
    .parameter

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid alignment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 128
    :goto_0
    return-object v0

    .line 126
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 128
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 184
    return-void

    .line 171
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v6}, Lcom/google/common/collect/MapMaker;->b(I)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    const-wide/16 v1, 0x78

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->k:Ljava/util/Map;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->VariableTextLayoutView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b:I

    .line 106
    const/4 v1, 0x4

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c:I

    .line 107
    const/16 v1, 0x12

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d:I

    .line 108
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g:Landroid/text/Layout$Alignment;

    .line 110
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h:I

    .line 111
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 112
    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 113
    invoke-direct {p0, v2, v1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(II)V

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d:I

    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c:I

    if-ge v0, v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e()Z

    move-result v0

    return v0
.end method

.method private b(I)F
    .locals 3
    .parameter

    .prologue
    .line 257
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 258
    const/high16 v0, -0x4080

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/text/Layout;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 366
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 369
    sparse-switch v1, :sswitch_data_0

    .line 383
    :goto_0
    return v0

    .line 371
    :sswitch_0
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_0

    .line 375
    :sswitch_1
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 269
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d:I

    :goto_0
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c:I

    if-lt v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c(I)Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method private c(I)Landroid/text/TextPaint;
    .locals 3
    .parameter

    .prologue
    .line 275
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 276
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 277
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b(I)F

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 279
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 280
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 281
    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->requestLayout()V

    .line 294
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 295
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d()V

    .line 296
    return-void
.end method

.method private d(I)Landroid/text/Layout;
    .locals 7
    .parameter

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a()Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h:I

    const/4 v6, -0x1

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;->a(Ljava/lang/Object;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 435
    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    if-nez v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 441
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    goto :goto_0

    .line 442
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 443
    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 451
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    if-eq v1, v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h()V

    .line 456
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g()V

    .line 458
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f()Z

    move-result v1

    .line 460
    const/4 v2, 0x2

    iput v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    .line 461
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 471
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getWidth()I

    move-result v3

    .line 475
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_2

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    .line 482
    iget-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    .line 484
    sub-int v5, v4, v0

    if-ge v5, v3, :cond_1

    .line 485
    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v0, v2

    .line 517
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getScrollX()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 518
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->scrollTo(II)V

    .line 519
    const/4 v0, 0x1

    .line 521
    :goto_1
    return v0

    .line 487
    :cond_1
    if-gez v2, :cond_0

    .line 488
    sub-int v0, v4, v3

    goto :goto_0

    .line 493
    :cond_2
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v4, :cond_3

    .line 498
    if-ltz v2, :cond_4

    .line 499
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 509
    :cond_3
    if-gez v2, :cond_4

    .line 510
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 513
    sub-int/2addr v0, v3

    goto :goto_0

    :cond_5
    move v0, v1

    .line 521
    goto :goto_1
.end method

.method private g()V
    .locals 7

    .prologue
    .line 527
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a()Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h:I

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getHeight()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;->a(Ljava/lang/Object;Ljava/util/List;ILandroid/text/Layout$Alignment;II)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    .line 537
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b()V

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 420
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->l:I

    .line 427
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 401
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h()V

    .line 402
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g()V

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 406
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getHeight()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 408
    const/4 v2, 0x0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 409
    div-int/lit8 v0, v0, 0x2

    .line 410
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 414
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 300
    const-string v0, "ThreadNameView.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 301
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h()V

    .line 303
    const/16 v0, 0x4000

    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->getDefaultSize(II)I

    move-result v1

    .line 304
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    .line 305
    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d(I)Landroid/text/Layout;

    move-result-object v0

    .line 307
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-static {v0, p1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(Landroid/text/Layout;I)I

    move-result v3

    .line 313
    if-ne v3, v1, :cond_1

    .line 314
    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b(Landroid/text/Layout;I)I

    move-result v1

    .line 315
    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    move v0, v1

    .line 321
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->setMeasuredDimension(II)V

    .line 322
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 323
    return-void

    .line 317
    :cond_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d(I)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->j:Landroid/text/Layout;

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b(Landroid/text/Layout;I)I

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 287
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 288
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->g:Landroid/text/Layout$Alignment;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 242
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 243
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 244
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a:Ljava/lang/Object;

    .line 231
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 232
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 233
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->h:I

    .line 252
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 253
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 254
    return-void
.end method

.method public setScaledTextSizes(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    if-ge p2, p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid text sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c:I

    .line 157
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->d:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 159
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 161
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->b:I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 141
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 142
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    if-lez p2, :cond_0

    .line 194
    if-nez p1, :cond_1

    .line 195
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 200
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    .line 201
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 203
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 204
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 205
    return-void

    .line 197
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0
.end method

.method public setTypefaceFamily(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->e:Landroid/graphics/Typeface;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 210
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 211
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 212
    return-void
.end method

.method public setTypefaceStyle(I)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->f:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->i:Ljava/util/List;

    .line 221
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->c()V

    .line 222
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->invalidate()V

    .line 223
    return-void
.end method
