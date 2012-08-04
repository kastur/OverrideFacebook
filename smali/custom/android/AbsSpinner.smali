.class public abstract Lcustom/android/AbsSpinner;
.super Lcustom/android/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcustom/android/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Landroid/database/DataSetObserver;

.field private B:Landroid/graphics/Rect;

.field a:Landroid/widget/SpinnerAdapter;

.field b:I

.field c:I

.field final d:Landroid/graphics/Rect;

.field final e:Lcustom/android/AbsSpinner$RecycleBin;

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcustom/android/AdapterView;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lcustom/android/AbsSpinner;->w:I

    .line 63
    iput v0, p0, Lcustom/android/AbsSpinner;->x:I

    .line 64
    iput v0, p0, Lcustom/android/AbsSpinner;->y:I

    .line 65
    iput v0, p0, Lcustom/android/AbsSpinner;->z:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Lcustom/android/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcustom/android/AbsSpinner$RecycleBin;-><init>(Lcustom/android/AbsSpinner;)V

    iput-object v0, p0, Lcustom/android/AbsSpinner;->e:Lcustom/android/AbsSpinner$RecycleBin;

    .line 76
    invoke-direct {p0}, Lcustom/android/AbsSpinner;->a()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcustom/android/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcustom/android/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcustom/android/AbsSpinner;->w:I

    .line 63
    iput v1, p0, Lcustom/android/AbsSpinner;->x:I

    .line 64
    iput v1, p0, Lcustom/android/AbsSpinner;->y:I

    .line 65
    iput v1, p0, Lcustom/android/AbsSpinner;->z:I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Lcustom/android/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcustom/android/AbsSpinner$RecycleBin;-><init>(Lcustom/android/AbsSpinner;)V

    iput-object v0, p0, Lcustom/android/AbsSpinner;->e:Lcustom/android/AbsSpinner$RecycleBin;

    .line 85
    invoke-direct {p0}, Lcustom/android/AbsSpinner;->a()V

    .line 87
    sget-object v0, Lcustom/android/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget v3, Lcustom/android/R$layout;->simple_spinner_item:I

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 95
    sget v1, Lcustom/android/R$layout;->simple_spinner_dropdown_item:I

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcustom/android/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->setFocusable(Z)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->setWillNotDraw(Z)V

    .line 108
    return-void
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 311
    iget v0, p0, Lcustom/android/AbsSpinner;->t:I

    if-eq p1, v0, :cond_0

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcustom/android/AbsSpinner;->v:Z

    .line 313
    iget v0, p0, Lcustom/android/AbsSpinner;->p:I

    .line 314
    invoke-virtual {p0, p1}, Lcustom/android/AbsSpinner;->c(I)V

    .line 315
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->e()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcustom/android/AbsSpinner;->v:Z

    .line 318
    :cond_0
    return-void
.end method

.method private b()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method private static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcustom/android/AbsSpinner;->B:Landroid/graphics/Rect;

    .line 364
    if-nez v0, :cond_0

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcustom/android/AbsSpinner;->B:Landroid/graphics/Rect;

    .line 366
    iget-object v0, p0, Lcustom/android/AbsSpinner;->B:Landroid/graphics/Rect;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getChildCount()I

    move-result v1

    .line 370
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 371
    invoke-virtual {p0, v1}, Lcustom/android/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 373
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 374
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    iget v0, p0, Lcustom/android/AbsSpinner;->f:I

    add-int/2addr v0, v1

    .line 379
    :goto_1
    return v0

    .line 370
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final c()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 160
    iput-boolean v0, p0, Lcustom/android/AbsSpinner;->m:Z

    .line 161
    iput-boolean v0, p0, Lcustom/android/AbsSpinner;->i:Z

    .line 163
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->removeAllViewsInLayout()V

    .line 164
    iput v2, p0, Lcustom/android/AbsSpinner;->t:I

    .line 165
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcustom/android/AbsSpinner;->u:J

    .line 167
    invoke-virtual {p0, v2}, Lcustom/android/AbsSpinner;->b(I)V

    .line 168
    invoke-virtual {p0, v2}, Lcustom/android/AbsSpinner;->c(I)V

    .line 169
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->invalidate()V

    .line 170
    return-void
.end method

.method final d()V
    .locals 6

    .prologue
    .line 273
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getChildCount()I

    move-result v1

    .line 274
    iget-object v2, p0, Lcustom/android/AbsSpinner;->e:Lcustom/android/AbsSpinner$RecycleBin;

    .line 275
    iget v3, p0, Lcustom/android/AbsSpinner;->f:I

    .line 278
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 280
    add-int v5, v3, v0

    .line 281
    invoke-virtual {v2, v5, v4}, Lcustom/android/AbsSpinner$RecycleBin;->a(ILandroid/view/View;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-void
.end method

.method abstract e()V
.end method

.method public final f()Landroid/view/View;
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcustom/android/AbsSpinner;->r:I

    if-lez v0, :cond_0

    iget v0, p0, Lcustom/android/AbsSpinner;->p:I

    if-ltz v0, :cond_0

    .line 325
    iget v0, p0, Lcustom/android/AbsSpinner;->p:I

    iget v1, p0, Lcustom/android/AbsSpinner;->f:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcustom/android/AbsSpinner;->r:I

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final synthetic h()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcustom/android/AbsSpinner;->b()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 182
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 186
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getPaddingLeft()I

    move-result v0

    .line 187
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getPaddingRight()I

    move-result v3

    .line 188
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getPaddingBottom()I

    move-result v4

    .line 189
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getPaddingTop()I

    move-result v2

    .line 191
    iget-object v7, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    if-lez v0, :cond_5

    :goto_0
    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 193
    iget-object v7, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    if-lez v2, :cond_6

    move v0, v2

    :goto_1
    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 195
    iget-object v2, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    if-lez v3, :cond_7

    move v0, v3

    :goto_2
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 197
    iget-object v2, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    if-lez v4, :cond_8

    move v0, v4

    :goto_3
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 200
    iget-boolean v0, p0, Lcustom/android/AbsSpinner;->m:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->m()V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->i()I

    move-result v2

    .line 209
    if-ltz v2, :cond_9

    iget-object v0, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcustom/android/AbsSpinner;->e:Lcustom/android/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcustom/android/AbsSpinner$RecycleBin;->a()Landroid/view/View;

    move-result-object v0

    .line 212
    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 217
    :cond_1
    if-eqz v0, :cond_2

    .line 219
    iget-object v2, p0, Lcustom/android/AbsSpinner;->e:Lcustom/android/AbsSpinner$RecycleBin;

    invoke-virtual {v2, v0}, Lcustom/android/AbsSpinner$RecycleBin;->a(Landroid/view/View;)V

    .line 222
    :cond_2
    if-eqz v0, :cond_9

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_3

    .line 224
    iput-boolean v5, p0, Lcustom/android/AbsSpinner;->v:Z

    .line 225
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iput-boolean v1, p0, Lcustom/android/AbsSpinner;->v:Z

    .line 228
    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lcustom/android/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 230
    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    .line 232
    invoke-static {v0}, Lcustom/android/AbsSpinner;->c(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    move v8, v1

    move v1, v2

    move v2, v8

    .line 238
    :goto_4
    if-eqz v2, :cond_4

    .line 240
    iget-object v1, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 241
    if-nez v6, :cond_4

    .line 242
    iget-object v0, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcustom/android/AbsSpinner;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 247
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 249
    invoke-static {v1, p2}, Lcustom/android/AbsSpinner;->resolveSize(II)I

    move-result v1

    .line 250
    invoke-static {v0, p1}, Lcustom/android/AbsSpinner;->resolveSize(II)I

    move-result v0

    .line 252
    invoke-virtual {p0, v0, v1}, Lcustom/android/AbsSpinner;->setMeasuredDimension(II)V

    .line 253
    iput p2, p0, Lcustom/android/AbsSpinner;->b:I

    .line 254
    iput p1, p0, Lcustom/android/AbsSpinner;->c:I

    .line 255
    return-void

    :cond_5
    move v0, v1

    .line 191
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 193
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 195
    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 197
    goto/16 :goto_3

    :cond_9
    move v2, v5

    move v0, v1

    goto :goto_4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 444
    check-cast p1, Lcustom/android/AbsSpinner$SavedState;

    .line 446
    invoke-virtual {p1}, Lcustom/android/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcustom/android/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 448
    iget-wide v0, p1, Lcustom/android/AbsSpinner$SavedState;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 449
    iput-boolean v4, p0, Lcustom/android/AbsSpinner;->m:Z

    .line 450
    iput-boolean v4, p0, Lcustom/android/AbsSpinner;->i:Z

    .line 451
    iget-wide v0, p1, Lcustom/android/AbsSpinner$SavedState;->a:J

    iput-wide v0, p0, Lcustom/android/AbsSpinner;->h:J

    .line 452
    iget v0, p1, Lcustom/android/AbsSpinner$SavedState;->b:I

    iput v0, p0, Lcustom/android/AbsSpinner;->g:I

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcustom/android/AbsSpinner;->j:I

    .line 454
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->requestLayout()V

    .line 456
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 431
    invoke-super {p0}, Lcustom/android/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 432
    new-instance v1, Lcustom/android/AbsSpinner$SavedState;

    invoke-direct {v1, v0}, Lcustom/android/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 433
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->j()J

    move-result-wide v2

    iput-wide v2, v1, Lcustom/android/AbsSpinner$SavedState;->a:J

    .line 434
    iget-wide v2, v1, Lcustom/android/AbsSpinner$SavedState;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->i()I

    move-result v0

    iput v0, v1, Lcustom/android/AbsSpinner$SavedState;->b:I

    .line 439
    :goto_0
    return-object v1

    .line 437
    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Lcustom/android/AbsSpinner$SavedState;->b:I

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcustom/android/AbsSpinner;->v:Z

    if-nez v0, :cond_0

    .line 340
    invoke-super {p0}, Lcustom/android/AdapterView;->requestLayout()V

    .line 342
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcustom/android/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 118
    iget-object v1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcustom/android/AbsSpinner;->A:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->c()V

    .line 123
    :cond_0
    iput-object p1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    .line 125
    iput v0, p0, Lcustom/android/AbsSpinner;->t:I

    .line 126
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcustom/android/AbsSpinner;->u:J

    .line 128
    iget-object v1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 129
    iget v1, p0, Lcustom/android/AbsSpinner;->r:I

    iput v1, p0, Lcustom/android/AbsSpinner;->s:I

    .line 130
    iget-object v1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcustom/android/AbsSpinner;->r:I

    .line 131
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->k()V

    .line 133
    new-instance v1, Lcustom/android/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcustom/android/AdapterView$AdapterDataSetObserver;-><init>(Lcustom/android/AdapterView;)V

    iput-object v1, p0, Lcustom/android/AbsSpinner;->A:Landroid/database/DataSetObserver;

    .line 134
    iget-object v1, p0, Lcustom/android/AbsSpinner;->a:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcustom/android/AbsSpinner;->A:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 136
    iget v1, p0, Lcustom/android/AbsSpinner;->r:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 138
    :cond_1
    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->b(I)V

    .line 139
    invoke-virtual {p0, v0}, Lcustom/android/AbsSpinner;->c(I)V

    .line 141
    iget v0, p0, Lcustom/android/AbsSpinner;->r:I

    if-nez v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->n()V

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->requestLayout()V

    .line 154
    return-void

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->k()V

    .line 148
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->c()V

    .line 150
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->n()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcustom/android/AbsSpinner;->c(I)V

    .line 298
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->requestLayout()V

    .line 299
    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->invalidate()V

    .line 300
    return-void
.end method

.method public setSelection(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    if-eqz p2, :cond_0

    iget v0, p0, Lcustom/android/AbsSpinner;->f:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcustom/android/AbsSpinner;->f:I

    invoke-virtual {p0}, Lcustom/android/AbsSpinner;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    invoke-direct {p0, p1, v0}, Lcustom/android/AbsSpinner;->a(IZ)V

    .line 293
    return-void

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
