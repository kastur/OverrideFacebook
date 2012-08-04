.class public Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;
.super Landroid/view/View;
.source "MultilineEllipsizeTextView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/graphics/Typeface;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/text/TextPaint;

.field private i:Landroid/text/Layout;

.field private j:I

.field private k:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private a(Landroid/text/Layout;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 215
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 217
    const/4 v1, 0x0

    .line 218
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 219
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    sparse-switch v3, :sswitch_data_0

    move v0, v2

    .line 238
    :goto_1
    :sswitch_0
    return v0

    .line 230
    :sswitch_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 224
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(I)Landroid/text/StaticLayout;
    .locals 5
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 314
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    .line 315
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->g:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    iget v4, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;III)Ljava/util/List;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Ljava/util/List;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/text/TextPaint;",
            "I)",
            "Landroid/text/StaticLayout;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 387
    if-nez p0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x1

    .line 391
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 392
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 393
    if-nez v3, :cond_1

    .line 394
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 396
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 397
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v3, v2

    .line 398
    goto :goto_1

    .line 400
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v5, 0x4000

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v4, p1

    move v9, v2

    move v11, p2

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;III)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/text/TextPaint;",
            "III)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 335
    invoke-static {p0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 342
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v4, p3

    .line 343
    :goto_1
    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 344
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    .line 346
    add-int/lit8 v1, p3, -0x1

    if-ge v7, v1, :cond_2

    .line 348
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    .line 349
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 350
    add-int/lit8 v1, v1, -0x1

    .line 364
    :cond_1
    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 365
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v7, v7, 0x1

    .line 367
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    .line 368
    goto :goto_1

    :cond_2
    move v1, v2

    .line 356
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 357
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 369
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p4, :cond_4

    .line 370
    const-string v0, ""

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 372
    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    .line 190
    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->k:Landroid/text/Layout;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    .line 192
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 193
    return-void
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 159
    return-void

    .line 146
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 150
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->MultilineEllipsizeTextView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    .line 81
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    .line 83
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    .line 84
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 85
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 86
    invoke-direct {p0, v2, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(II)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 90
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->b(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 92
    :cond_0
    return-void
.end method

.method private b(Landroid/text/Layout;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 250
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 252
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 254
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 268
    :goto_0
    :sswitch_0
    return v0

    .line 260
    :sswitch_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 254
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 293
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v0, Landroid/text/TextPaint;->density:F

    .line 294
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 300
    :goto_0
    iget v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->d:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    .line 301
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 302
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x4180

    :goto_1
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 304
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 299
    goto :goto_0

    .line 302
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(I)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 275
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 276
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c()V

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 280
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getHeight()I

    move-result v0

    .line 281
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 282
    const/4 v2, 0x0

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 283
    div-int/lit8 v0, v0, 0x2

    .line 284
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->i:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 197
    const-string v0, "MultilineEllipsizeTextView.onMeasure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b()V

    .line 199
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->getDefaultSize(II)I

    move-result v1

    .line 201
    iget v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->k:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(I)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->k:Landroid/text/Layout;

    .line 203
    iput v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->j:I

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->k:Landroid/text/Layout;

    invoke-direct {p0, v1, p1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a(Landroid/text/Layout;I)I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->k:Landroid/text/Layout;

    invoke-direct {p0, v2, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b(Landroid/text/Layout;I)I

    move-result v2

    .line 209
    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setMeasuredDimension(II)V

    .line 210
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 211
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 185
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 186
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->f:I

    .line 118
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 120
    return-void
.end method

.method public setMinLines(I)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->e:I

    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->g:Ljava/lang/CharSequence;

    .line 138
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 139
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 140
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 101
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->b:F

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 110
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    if-lez p2, :cond_0

    .line 169
    if-nez p1, :cond_1

    .line 170
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 175
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->c:Landroid/graphics/Typeface;

    .line 176
    iput p2, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->d:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->h:Landroid/text/TextPaint;

    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->a()V

    .line 179
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->invalidate()V

    .line 180
    return-void

    .line 172
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0
.end method
