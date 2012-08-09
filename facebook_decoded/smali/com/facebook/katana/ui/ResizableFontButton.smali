.class public Lcom/facebook/katana/ui/ResizableFontButton;
.super Landroid/widget/Button;
.source "ResizableFontButton.java"


# static fields
.field private static final a:Landroid/graphics/Canvas;


# instance fields
.field private final b:F

.field private c:Z

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/facebook/katana/ui/ResizableFontButton;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->b:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 40
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->h:Z

    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->b:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 40
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->h:Z

    .line 60
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->b:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 40
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->h:Z

    .line 66
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    .line 67
    return-void
.end method

.method private a()F
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getTextSize()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/ResizableFontButton;->b(F)F

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p3}, Lcom/facebook/katana/ui/ResizableFontButton;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 276
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private a(F)I
    .locals 2
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->b:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private b(F)F
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->b:F

    div-float v0, p1, v0

    return v0
.end method

.method private b(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p3}, Lcom/facebook/katana/ui/ResizableFontButton;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 286
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    iget v1, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    invoke-super {p0, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 195
    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getCompoundPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 212
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getCompoundPaddingBottom()I

    move-result v1

    sub-int v9, v0, v1

    .line 213
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez v9, :cond_0

    if-gtz v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 224
    iget v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    iget v4, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 226
    invoke-direct {p0, v1, v2, v4}, Lcom/facebook/katana/ui/ResizableFontButton;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)I

    move-result v0

    int-to-float v0, v0

    move v10, v0

    move v0, v4

    move v4, v10

    .line 229
    :goto_1
    int-to-float v5, v9

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    iget v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_6

    .line 230
    sub-float/2addr v0, v6

    iget v4, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 231
    invoke-direct {p0, v1, v2, v4}, Lcom/facebook/katana/ui/ResizableFontButton;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)I

    move-result v0

    int-to-float v0, v0

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_1

    .line 234
    :goto_2
    invoke-direct {p0, v1, v2, v8}, Lcom/facebook/katana/ui/ResizableFontButton;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)F

    move-result v0

    .line 237
    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    iget v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_2

    .line 238
    sub-float v0, v8, v6

    iget v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v8, v0

    .line 239
    goto :goto_2

    .line 243
    :cond_2
    iget-boolean v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->h:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    cmpg-float v5, v8, v5

    if-gtz v5, :cond_5

    int-to-float v5, v3

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_3

    int-to-float v0, v9

    cmpl-float v0, v4, v0

    if-lez v0, :cond_5

    .line 246
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    iget v6, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 248
    sget-object v4, Lcom/facebook/katana/ui/ResizableFontButton;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 249
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    .line 250
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    .line 251
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 252
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 253
    const-string v5, "\u2026"

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    move v10, v4

    move v4, v0

    move v0, v10

    .line 256
    :goto_3
    int-to-float v9, v3

    add-float/2addr v4, v5

    cmpg-float v4, v9, v4

    if-gez v4, :cond_4

    .line 257
    invoke-interface {v1, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 256
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 259
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/ResizableFontButton;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_5
    const/4 v0, 0x1

    invoke-super {p0, v0, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 266
    iget v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    iget v1, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ui/ResizableFontButton;->setLineSpacing(FF)V

    .line 269
    iput-boolean v7, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    goto/16 :goto_0

    :cond_6
    move v8, v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->c()V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 106
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 94
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->b()V

    .line 95
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/facebook/katana/ui/ResizableFontButton;->h:Z

    .line 167
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setLineSpacing(FF)V

    .line 135
    iput p2, p0, Lcom/facebook/katana/ui/ResizableFontButton;->f:F

    .line 136
    iput p1, p0, Lcom/facebook/katana/ui/ResizableFontButton;->g:F

    .line 137
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iput p1, p0, Lcom/facebook/katana/ui/ResizableFontButton;->e:F

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->c:Z

    .line 147
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->invalidate()V

    .line 149
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 115
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    .line 116
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 125
    invoke-direct {p0}, Lcom/facebook/katana/ui/ResizableFontButton;->a()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/ResizableFontButton;->d:F

    .line 126
    return-void
.end method
