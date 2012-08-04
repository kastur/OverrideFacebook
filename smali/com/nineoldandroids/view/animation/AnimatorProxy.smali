.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final a:Z

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/view/View;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/graphics/Camera;

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->a:Z

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:Z

    .line 46
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    .line 47
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 48
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 49
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 50
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 51
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 52
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 53
    iput v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    .line 54
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    .line 55
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    .line 58
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iput-object p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    .line 63
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Landroid/graphics/Camera;

    .line 64
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .locals 2
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 36
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    return v0
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    .line 71
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 72
    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 183
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->g:F

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 185
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v2, v1

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 188
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 190
    iget v5, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 191
    iget v6, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 192
    iget v7, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 193
    cmpl-float v0, v5, v10

    if-nez v0, :cond_0

    cmpl-float v0, v6, v10

    if-nez v0, :cond_0

    cmpl-float v0, v7, v10

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v8, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->e:Landroid/graphics/Camera;

    .line 195
    iget-boolean v9, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:Z

    .line 196
    if-eqz v9, :cond_4

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    move v1, v0

    .line 197
    :goto_0
    if-eqz v9, :cond_5

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 198
    :goto_1
    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 199
    invoke-virtual {v8, v5}, Landroid/graphics/Camera;->rotateX(F)V

    .line 200
    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 201
    neg-float v5, v7

    invoke-virtual {v8, v5}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 202
    invoke-virtual {v8, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 203
    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 204
    neg-float v5, v1

    neg-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 205
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 208
    :cond_1
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 209
    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    .line 210
    cmpl-float v5, v0, v10

    if-nez v5, :cond_2

    cmpl-float v5, v0, v10

    if-eqz v5, :cond_3

    .line 211
    :cond_2
    mul-float v5, v0, v2

    sub-float v2, v5, v2

    div-float/2addr v2, v11

    .line 212
    mul-float v5, v1, v3

    sub-float v3, v5, v3

    div-float/2addr v3, v11

    .line 213
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 214
    neg-float v0, v2

    neg-float v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    :cond_3
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 217
    return-void

    .line 196
    :cond_4
    div-float v0, v2, v11

    move v1, v0

    goto :goto_0

    .line 197
    :cond_5
    div-float v0, v3, v11

    goto :goto_1
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    return v0
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:Z

    .line 78
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 79
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->h:F

    .line 80
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 82
    :cond_0
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    return v0
.end method

.method public final c(F)V
    .locals 1
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->f:Z

    .line 88
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i:F

    .line 90
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 92
    :cond_0
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    return v0
.end method

.method public final d(F)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 98
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->l:F

    .line 99
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 101
    :cond_0
    return-void
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    return v0
.end method

.method public final e(F)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 107
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j:F

    .line 108
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 110
    :cond_0
    return-void
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    return v0
.end method

.method public final f(F)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 116
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->k:F

    .line 117
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 119
    :cond_0
    return-void
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    return v0
.end method

.method public final g(F)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 125
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->m:F

    .line 126
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 128
    :cond_0
    return-void
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    return v0
.end method

.method public final h(F)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 134
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->n:F

    .line 135
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 137
    :cond_0
    return-void
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public final i(F)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 155
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    .line 156
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 158
    :cond_0
    return-void
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public final j(F)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 164
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    .line 165
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public final k()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    return v0
.end method

.method public final k(F)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->i(F)V

    .line 173
    return-void
.end method

.method public final l()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    return v0
.end method

.method public final l(F)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->j(F)V

    .line 179
    return-void
.end method

.method public final m()F
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->o:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final n()F
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->p:F

    add-float/2addr v0, v1

    return v0
.end method
