.class public Lcom/facebook/katana/activity/media/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Matrix;

.field private f:Landroid/view/View;

.field private g:Lcom/facebook/katana/activity/media/FocusIndicatorView;

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Landroid/hardware/Camera$Parameters;

.field private m:Landroid/os/Handler;

.field private n:Lcom/facebook/katana/activity/media/FocusManager$Listener;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 79
    iput-object p1, p0, Lcom/facebook/katana/activity/media/FocusManager;->k:[Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/facebook/katana/activity/media/FocusManager$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/FocusManager$MainHandler;-><init>(Lcom/facebook/katana/activity/media/FocusManager;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    .line 81
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->e:Landroid/graphics/Matrix;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->g()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 460
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "FocusManager"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->n:Lcom/facebook/katana/activity/media/FocusManager$Listener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusManager$Listener;->l()V

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 289
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    .line 290
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    const-string v0, "FocusManager"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/FocusManager;->e()V

    .line 301
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->n:Lcom/facebook/katana/activity/media/FocusManager$Listener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusManager$Listener;->m()V

    .line 302
    iput v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 303
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    .line 304
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->n:Lcom/facebook/katana/activity/media/FocusManager$Listener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusManager$Listener;->k()Z

    .line 310
    iput v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 311
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 313
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 321
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->c:Z

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 332
    invoke-static {v2, v1}, Lcom/facebook/katana/activity/media/FocusManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iput-object v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/FocusManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    const-string v0, "auto"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/FocusManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const-string v0, "auto"

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    .line 349
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    return-object v0

    .line 330
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    goto :goto_1
.end method

.method private j()V
    .locals 3

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 368
    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->g:Lcom/facebook/katana/activity/media/FocusIndicatorView;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/FocusIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 369
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 370
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 373
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->g:Lcom/facebook/katana/activity/media/FocusIndicatorView;

    .line 375
    iget v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    if-nez v1, :cond_2

    .line 376
    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusIndicator;->d()V

    goto :goto_0

    .line 382
    :cond_2
    iget v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 385
    :cond_3
    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusIndicator;->a()V

    goto :goto_0

    .line 390
    :cond_4
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusIndicator;->a()V

    goto :goto_0

    .line 392
    :cond_5
    iget v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 393
    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusIndicator;->b()V

    goto :goto_0

    .line 394
    :cond_6
    iget v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 395
    invoke-interface {v0}, Lcom/facebook/katana/activity/media/FocusIndicator;->c()V

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->i()Ljava/lang/String;

    move-result-object v0

    .line 466
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->d:Z

    if-nez v0, :cond_2

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->d:Z

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->f()V

    goto :goto_0
.end method

.method public final a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    .line 90
    const-string v0, "auto"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/FocusManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->c:Z

    .line 92
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Lcom/facebook/katana/activity/media/FocusManager$Listener;ZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    iput-object p1, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    .line 98
    const v0, 0x7f080117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/FocusIndicatorView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->g:Lcom/facebook/katana/activity/media/FocusIndicatorView;

    .line 100
    iput-object p2, p0, Lcom/facebook/katana/activity/media/FocusManager;->h:Landroid/view/View;

    .line 101
    iput-object p3, p0, Lcom/facebook/katana/activity/media/FocusManager;->n:Lcom/facebook/katana/activity/media/FocusManager$Listener;

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Lcom/facebook/katana/activity/media/MediaUtil;->a(Landroid/graphics/Matrix;ZIII)V

    .line 109
    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->l:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "FocusManager"

    const-string v1, "mParameters is not initialized."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 185
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 189
    if-eqz p1, :cond_0

    .line 190
    iput v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    .line 195
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->h()V

    .line 221
    :goto_1
    return-void

    .line 192
    :cond_0
    iput v3, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    goto :goto_0

    .line 196
    :cond_1
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 200
    if-eqz p1, :cond_3

    .line 201
    iput v2, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 205
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/FocusManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    goto :goto_1

    .line 209
    :cond_3
    iput v3, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    goto :goto_2

    .line 215
    :cond_4
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    goto :goto_1
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 261
    :goto_0
    return v0

    .line 228
    :cond_1
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->g()V

    .line 234
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 236
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 238
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 239
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 242
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 244
    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v3, v9

    sub-int v5, v7, v5

    invoke-static {v3, v2, v5}, Lcom/facebook/katana/activity/media/MediaUtil;->a(III)I

    move-result v3

    .line 245
    div-int/lit8 v5, v6, 0x2

    sub-int/2addr v4, v5

    sub-int v5, v8, v6

    invoke-static {v4, v2, v5}, Lcom/facebook/katana/activity/media/MediaUtil;->a(III)I

    move-result v4

    .line 246
    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 249
    const/16 v3, 0xd

    aput v2, v0, v3

    .line 250
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 252
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->c:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->f()V

    :goto_1
    move v0, v1

    .line 261
    goto :goto_0

    .line 255
    :cond_4
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    .line 257
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->m:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->h()V

    goto :goto_0

    .line 163
    :cond_3
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    goto :goto_0

    .line 168
    :cond_4
    iget v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->h()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 267
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->a:I

    .line 272
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/FocusManager;->e()V

    .line 274
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/FocusManager;->j()V

    .line 275
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->b:Z

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 408
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 409
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager;->i:Ljava/util/List;

    goto :goto_0
.end method
