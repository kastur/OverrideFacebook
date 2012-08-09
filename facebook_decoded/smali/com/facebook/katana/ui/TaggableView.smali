.class public Lcom/facebook/katana/ui/TaggableView;
.super Landroid/widget/FrameLayout;
.source "TaggableView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

.field private c:Landroid/view/GestureDetector;

.field private d:I

.field private e:I

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/ui/TagView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/ui/TagSuggestionView;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggableView;->a:Landroid/content/Context;

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    const v1, 0x7f030108

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->c:Landroid/view/GestureDetector;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->g:Ljava/util/ArrayList;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/ui/TaggableView;->h:I

    .line 54
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ui/TaggableView$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ui/TaggableView$1;-><init>(Lcom/facebook/katana/ui/TaggableView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ui/TaggableView;)Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->b:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    return-object v0
.end method

.method private a(Lcom/facebook/katana/ui/TagView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 170
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 176
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->c(Lcom/facebook/katana/ui/TagView;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->d(Lcom/facebook/katana/ui/TagView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/ui/TaggableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method private b(Lcom/facebook/katana/ui/TagSuggestionView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iget v1, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    invoke-virtual {p1, v1}, Lcom/facebook/katana/ui/TagSuggestionView;->setImageSize(I)V

    .line 196
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->c(Lcom/facebook/katana/ui/TagSuggestionView;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->d(Lcom/facebook/katana/ui/TagSuggestionView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    invoke-virtual {p1, v0}, Lcom/facebook/katana/ui/TagSuggestionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method private b(Lcom/facebook/katana/ui/TagView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->c(Lcom/facebook/katana/ui/TagView;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->d(Lcom/facebook/katana/ui/TagView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    invoke-virtual {p1, v0}, Lcom/facebook/katana/ui/TagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method private c()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/katana/ui/TaggableView;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/katana/ui/TaggableView;->h:I

    return v0
.end method

.method private c(Lcom/facebook/katana/ui/TagSuggestionView;)I
    .locals 4
    .parameter

    .prologue
    .line 259
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 262
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->a()I

    move-result v1

    .line 263
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    .line 266
    add-int v2, v0, v1

    iget v3, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    if-le v2, v3, :cond_0

    .line 267
    iget v0, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    sub-int/2addr v0, v1

    .line 270
    :cond_0
    return v0
.end method

.method private c(Lcom/facebook/katana/ui/TagView;)I
    .locals 4
    .parameter

    .prologue
    .line 298
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 299
    iget v1, p1, Lcom/facebook/katana/ui/TagView;->b:F

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 301
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagView;->a()I

    move-result v1

    .line 302
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    .line 305
    add-int v2, v0, v1

    iget v3, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    if-le v2, v3, :cond_0

    .line 306
    iget v0, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    sub-int/2addr v0, v1

    .line 308
    :cond_0
    if-gez v0, :cond_1

    .line 309
    const/4 v0, 0x0

    .line 312
    :cond_1
    return v0
.end method

.method private d(Lcom/facebook/katana/ui/TagSuggestionView;)I
    .locals 4
    .parameter

    .prologue
    .line 275
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->getY()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 278
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->b()I

    move-result v1

    .line 279
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagSuggestionView;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    .line 282
    add-int v2, v0, v1

    iget v3, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    if-le v2, v3, :cond_0

    .line 283
    iget v0, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    sub-int/2addr v0, v1

    .line 286
    :cond_0
    return v0
.end method

.method private d(Lcom/facebook/katana/ui/TagView;)I
    .locals 4
    .parameter

    .prologue
    .line 324
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 325
    iget v1, p1, Lcom/facebook/katana/ui/TagView;->c:F

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 327
    invoke-virtual {p1}, Lcom/facebook/katana/ui/TagView;->b()I

    move-result v1

    .line 330
    add-int v2, v0, v1

    iget v3, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    if-le v2, v3, :cond_0

    .line 331
    iget v0, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    sub-int/2addr v0, v1

    .line 334
    :cond_0
    return v0
.end method


# virtual methods
.method public final a(FFF)Lcom/facebook/katana/ui/TagSuggestionView;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    const v1, 0x7f030104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagSuggestionView;

    .line 130
    iget v1, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagSuggestionView;->setImageSize(I)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/facebook/katana/ui/TagSuggestionView;->setEyeDistance(F)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/TagSuggestionView;->setX(F)V

    .line 133
    invoke-virtual {v0, p2}, Lcom/facebook/katana/ui/TagSuggestionView;->setY(F)V

    .line 135
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 140
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->c(Lcom/facebook/katana/ui/TagSuggestionView;)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->d(Lcom/facebook/katana/ui/TagSuggestionView;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ui/TaggableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggableView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/facebook/katana/ui/TaggableView$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/ui/TaggableView$2;-><init>(Lcom/facebook/katana/ui/TaggableView;Lcom/facebook/katana/ui/TagSuggestionView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TagSuggestionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-object v0
.end method

.method public final a(JFFLjava/lang/String;)Lcom/facebook/katana/ui/TagView;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 95
    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    const v1, 0x7f030106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagView;

    .line 100
    iput p3, v0, Lcom/facebook/katana/ui/TagView;->b:F

    .line 101
    iput p4, v0, Lcom/facebook/katana/ui/TagView;->c:F

    .line 102
    iput-wide p1, v0, Lcom/facebook/katana/ui/TagView;->a:J

    .line 103
    invoke-virtual {v0, p5}, Lcom/facebook/katana/ui/TagView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    cmp-long v1, p1, v3

    if-nez v1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/facebook/katana/ui/TaggableView;->c()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/facebook/katana/ui/TagView;->a:J

    .line 109
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->a(Lcom/facebook/katana/ui/TagView;)V

    .line 110
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/facebook/katana/ui/TagView;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return-object v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagView;

    .line 113
    iput p3, v0, Lcom/facebook/katana/ui/TagView;->b:F

    .line 114
    iput p4, v0, Lcom/facebook/katana/ui/TagView;->c:F

    .line 116
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->b(Lcom/facebook/katana/ui/TagView;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 214
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 216
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 218
    iget v2, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    if-eq v2, v1, :cond_1

    .line 219
    iput v1, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    .line 220
    iput v0, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    .line 222
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 223
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagView;

    .line 224
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->b(Lcom/facebook/katana/ui/TagView;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagSuggestionView;

    .line 228
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->b(Lcom/facebook/katana/ui/TagSuggestionView;)V

    goto :goto_1

    .line 231
    :cond_1
    return-void
.end method

.method public final a(J)V
    .locals 3
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TagView;

    .line 206
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->removeView(Landroid/view/View;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/TagSuggestionView;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0, p1}, Lcom/facebook/katana/ui/TaggableView;->removeView(Landroid/view/View;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 238
    iget-object v2, p0, Lcom/facebook/katana/ui/TaggableView;->f:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/facebook/katana/ui/TagView;

    .line 242
    iget-wide v0, v10, Lcom/facebook/katana/ui/TagView;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 244
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    const-string v1, ""

    const-wide/16 v2, -0x1

    iget v4, v10, Lcom/facebook/katana/ui/TagView;->b:F

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v10, Lcom/facebook/katana/ui/TagView;->c:F

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/16 v8, -0x1

    invoke-virtual {v10}, Lcom/facebook/katana/ui/TagView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Ljava/lang/String;JDDJLjava/lang/String;)V

    .line 251
    :goto_1
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    const-string v1, ""

    iget-wide v2, v10, Lcom/facebook/katana/ui/TagView;->a:J

    iget v4, v10, Lcom/facebook/katana/ui/TagView;->b:F

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v10, Lcom/facebook/katana/ui/TagView;->c:F

    const/high16 v7, 0x42c8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/model/FacebookPhotoTag;-><init>(Ljava/lang/String;JDDJLjava/lang/String;)V

    goto :goto_1

    .line 254
    :cond_1
    return-object v11
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 372
    const v0, 0x7f0801fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 375
    iget-object v2, p0, Lcom/facebook/katana/ui/TaggableView;->b:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    invoke-interface {v2, v1, v0}, Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;->a(FF)V

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggableView;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f0801fd

    .line 74
    invoke-virtual {p0, v1}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/facebook/katana/ui/TaggableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/TaggableView;->d:I

    .line 80
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/TaggableView;->e:I

    .line 81
    return-void
.end method

.method public setListener(Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggableView;->b:Lcom/facebook/katana/ui/TaggableView$TaggableViewListener;

    .line 70
    return-void
.end method
