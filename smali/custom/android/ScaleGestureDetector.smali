.class public Lcustom/android/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

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

.field private q:F

.field private r:F

.field private s:F

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 155
    iput-object p1, p0, Lcustom/android/ScaleGestureDetector;->a:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->q:F

    .line 158
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 314
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v1, -0x4080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 318
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 321
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    .line 323
    iput v1, p0, Lcustom/android/ScaleGestureDetector;->l:F

    .line 324
    iput v1, p0, Lcustom/android/ScaleGestureDetector;->m:F

    .line 325
    iput v1, p0, Lcustom/android/ScaleGestureDetector;->n:F

    .line 327
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 329
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 330
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 331
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 332
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 333
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 334
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 335
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 336
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 338
    sub-float v1, v3, v1

    .line 339
    sub-float v2, v4, v2

    .line 340
    sub-float v3, v7, v5

    .line 341
    sub-float v4, v8, v6

    .line 342
    iput v1, p0, Lcustom/android/ScaleGestureDetector;->h:F

    .line 343
    iput v2, p0, Lcustom/android/ScaleGestureDetector;->i:F

    .line 344
    iput v3, p0, Lcustom/android/ScaleGestureDetector;->j:F

    .line 345
    iput v4, p0, Lcustom/android/ScaleGestureDetector;->k:F

    .line 347
    mul-float v1, v3, v11

    add-float/2addr v1, v5

    iput v1, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 348
    mul-float v1, v4, v11

    add-float/2addr v1, v6

    iput v1, p0, Lcustom/android/ScaleGestureDetector;->g:F

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 350
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcustom/android/ScaleGestureDetector;->o:F

    .line 351
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->p:F

    .line 352
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 357
    iput-object v2, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 359
    :cond_0
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 361
    iput-object v2, p0, Lcustom/android/ScaleGestureDetector;->e:Landroid/view/MotionEvent;

    .line 363
    :cond_1
    iput-boolean v1, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    .line 364
    iput-boolean v1, p0, Lcustom/android/ScaleGestureDetector;->c:Z

    .line 365
    return-void
.end method

.method private f()F
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->l:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 413
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->j:F

    .line 414
    iget v1, p0, Lcustom/android/ScaleGestureDetector;->k:F

    .line 415
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->l:F

    .line 417
    :cond_0
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->l:F

    return v0
.end method

.method private g()F
    .locals 2

    .prologue
    .line 427
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->m:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 428
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->h:F

    .line 429
    iget v1, p0, Lcustom/android/ScaleGestureDetector;->i:F

    .line 430
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->m:F

    .line 432
    :cond_0
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->m:F

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->c:Z

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x2

    const/high16 v10, -0x4080

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 162
    iget-boolean v3, p0, Lcustom/android/ScaleGestureDetector;->c:Z

    if-nez v3, :cond_14

    .line 165
    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/16 v3, 0x105

    if-ne v2, v3, :cond_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_9

    .line 171
    iget-object v2, p0, Lcustom/android/ScaleGestureDetector;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 172
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcustom/android/ScaleGestureDetector;->q:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcustom/android/ScaleGestureDetector;->r:F

    .line 173
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcustom/android/ScaleGestureDetector;->q:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcustom/android/ScaleGestureDetector;->s:F

    .line 176
    invoke-direct {p0}, Lcustom/android/ScaleGestureDetector;->e()V

    .line 178
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    .line 179
    invoke-direct {p0, p1}, Lcustom/android/ScaleGestureDetector;->b(Landroid/view/MotionEvent;)V

    .line 187
    iget v2, p0, Lcustom/android/ScaleGestureDetector;->q:F

    .line 188
    iget v4, p0, Lcustom/android/ScaleGestureDetector;->r:F

    .line 189
    iget v5, p0, Lcustom/android/ScaleGestureDetector;->s:F

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 192
    invoke-static {p1, v1}, Lcustom/android/ScaleGestureDetector;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 193
    invoke-static {p1, v1}, Lcustom/android/ScaleGestureDetector;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 195
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_1

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_1

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    cmpl-float v3, v6, v5

    if-lez v3, :cond_4

    :cond_1
    move v3, v1

    .line 197
    :goto_0
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_2

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_2

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_2

    cmpl-float v2, v8, v5

    if-lez v2, :cond_5

    :cond_2
    move v2, v1

    .line 200
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 201
    iput v10, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 202
    iput v10, p0, Lcustom/android/ScaleGestureDetector;->g:F

    .line 203
    iput-boolean v1, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    .line 298
    :cond_3
    :goto_2
    return v1

    :cond_4
    move v3, v0

    .line 195
    goto :goto_0

    :cond_5
    move v2, v0

    .line 197
    goto :goto_1

    .line 204
    :cond_6
    if-eqz v3, :cond_7

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    .line 207
    iput-boolean v1, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    goto :goto_2

    .line 208
    :cond_7
    if-eqz v2, :cond_8

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    .line 211
    iput-boolean v1, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    goto :goto_2

    .line 213
    :cond_8
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0}, Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->c:Z

    goto :goto_2

    .line 215
    :cond_9
    if-ne v2, v4, :cond_11

    iget-boolean v3, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    if-eqz v3, :cond_11

    .line 217
    iget v2, p0, Lcustom/android/ScaleGestureDetector;->q:F

    .line 218
    iget v4, p0, Lcustom/android/ScaleGestureDetector;->r:F

    .line 219
    iget v5, p0, Lcustom/android/ScaleGestureDetector;->s:F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 222
    invoke-static {p1, v1}, Lcustom/android/ScaleGestureDetector;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 223
    invoke-static {p1, v1}, Lcustom/android/ScaleGestureDetector;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 225
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_a

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_a

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    cmpl-float v3, v6, v5

    if-lez v3, :cond_c

    :cond_a
    move v3, v1

    .line 227
    :goto_3
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_b

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_b

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_b

    cmpl-float v2, v8, v5

    if-lez v2, :cond_d

    :cond_b
    move v2, v1

    .line 230
    :goto_4
    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    .line 231
    iput v10, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 232
    iput v10, p0, Lcustom/android/ScaleGestureDetector;->g:F

    goto :goto_2

    :cond_c
    move v3, v0

    .line 225
    goto :goto_3

    :cond_d
    move v2, v0

    .line 227
    goto :goto_4

    .line 233
    :cond_e
    if-eqz v3, :cond_f

    .line 234
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    goto/16 :goto_2

    .line 236
    :cond_f
    if-eqz v2, :cond_10

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    goto/16 :goto_2

    .line 240
    :cond_10
    iput-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    .line 241
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0}, Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->c:Z

    goto/16 :goto_2

    .line 243
    :cond_11
    const/4 v3, 0x6

    if-eq v2, v3, :cond_12

    const/16 v3, 0x106

    if-ne v2, v3, :cond_3

    :cond_12
    iget-boolean v3, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    if-eqz v3, :cond_3

    .line 247
    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_13

    move v0, v1

    .line 249
    :cond_13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    goto/16 :goto_2

    .line 254
    :cond_14
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    .line 282
    :sswitch_0
    invoke-direct {p0, p1}, Lcustom/android/ScaleGestureDetector;->b(Landroid/view/MotionEvent;)V

    .line 287
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->o:F

    iget v2, p0, Lcustom/android/ScaleGestureDetector;->p:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;->a(Lcustom/android/ScaleGestureDetector;)Z

    move-result v0

    .line 290
    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 292
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcustom/android/ScaleGestureDetector;->d:Landroid/view/MotionEvent;

    goto/16 :goto_2

    .line 258
    :sswitch_1
    invoke-direct {p0, p1}, Lcustom/android/ScaleGestureDetector;->b(Landroid/view/MotionEvent;)V

    .line 261
    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_15

    move v0, v1

    .line 263
    :cond_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcustom/android/ScaleGestureDetector;->f:F

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    .line 266
    iget-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    if-nez v0, :cond_16

    .line 267
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0}, Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;->b()V

    .line 270
    :cond_16
    invoke-direct {p0}, Lcustom/android/ScaleGestureDetector;->e()V

    goto/16 :goto_2

    .line 274
    :sswitch_2
    iget-boolean v0, p0, Lcustom/android/ScaleGestureDetector;->t:Z

    if-nez v0, :cond_17

    .line 275
    iget-object v0, p0, Lcustom/android/ScaleGestureDetector;->b:Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0}, Lcustom/android/ScaleGestureDetector$OnScaleGestureListener;->b()V

    .line 278
    :cond_17
    invoke-direct {p0}, Lcustom/android/ScaleGestureDetector;->e()V

    goto/16 :goto_2

    .line 254
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->f:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->g:F

    return v0
.end method

.method public final d()F
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->n:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcustom/android/ScaleGestureDetector;->f()F

    move-result v0

    invoke-direct {p0}, Lcustom/android/ScaleGestureDetector;->g()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcustom/android/ScaleGestureDetector;->n:F

    .line 446
    :cond_0
    iget v0, p0, Lcustom/android/ScaleGestureDetector;->n:F

    return v0
.end method
