.class public Lcom/facebook/katana/activity/media/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/facebook/katana/activity/media/FocusManager$Listener;


# instance fields
.field a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

.field private b:Landroid/hardware/Camera;

.field private c:Lcom/facebook/katana/activity/media/CameraPreview;

.field private final d:Lcom/facebook/katana/activity/media/CameraFlash;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;

.field private g:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

.field private h:Lcom/facebook/katana/activity/media/FocusManager;

.field private final i:Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;

.field private j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private final o:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->f:Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;

    .line 57
    new-instance v0, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->i:Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;

    .line 59
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    .line 280
    new-instance v0, Lcom/facebook/katana/activity/media/CameraHolder$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/CameraHolder$1;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->o:Landroid/hardware/Camera$PictureCallback;

    .line 84
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    .line 85
    new-instance v0, Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-direct {v0, p3, p2}, Lcom/facebook/katana/activity/media/CameraFlash;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    .line 86
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private a(I)Landroid/hardware/Camera;
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    .line 245
    :goto_0
    return-object v0

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    const-string v0, "CameraHolder"

    const-string v1, "getCameraInstance() failed"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraHolder;I)Landroid/hardware/Camera;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraFlash;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraHolder;Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    return-object p1
.end method

.method private a(Landroid/hardware/Camera;)V
    .locals 2
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "CameraHolder"

    const-string v1, "asked to set and initialize camera with explicitly releasing first!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    if-nez p1, :cond_1

    .line 312
    const-string v0, "CameraHolder"

    const-string v1, "We aren\'t supposed to see a null camera here!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    .line 316
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->b(Landroid/hardware/Camera;)V

    .line 317
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraFlash;->b()V

    .line 319
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraFlash;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->b(I)V

    .line 320
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 325
    :goto_0
    if-eqz v1, :cond_2

    .line 326
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 328
    :cond_2
    new-instance v1, Lcom/facebook/katana/activity/media/FocusManager;

    invoke-direct {v1, v0}, Lcom/facebook/katana/activity/media/FocusManager;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    .line 329
    return-void

    .line 323
    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraHolder;Landroid/hardware/Camera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraHolder;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->s()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->q()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/CameraHolder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/CameraHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->o()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->r()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/katana/activity/media/CameraHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    return v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->t()V

    return-void
.end method

.method static synthetic j(Lcom/facebook/katana/activity/media/CameraHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->u()V

    return-void
.end method

.method static synthetic k(Lcom/facebook/katana/activity/media/CameraHolder;)Lcom/facebook/katana/activity/media/FocusManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 92
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 93
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    if-ge v0, v2, :cond_0

    .line 94
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 95
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v3}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->u()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 96
    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    .line 100
    :cond_0
    return-void

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private o()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->g:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    iget v1, v1, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->rotatedDegrees:I

    .line 187
    invoke-static {}, Lcom/facebook/katana/activity/media/CameraHolder;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 190
    iget v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 192
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 193
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 195
    :cond_2
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->g:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    sget-object v2, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    if-ne v1, v2, :cond_0

    .line 200
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method private static p()Z
    .locals 2

    .prologue
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to load camera, even though we already have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_2
    const-string v0, "CameraHolder"

    const-string v1, "We shouldn\'t be launching another task to capture camera!"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    iput-boolean v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    .line 274
    const-string v0, "CameraHolder"

    const-string v1, "camera ready and loaded"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v0, v2}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->d(Z)V

    .line 276
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->e(Z)V

    .line 277
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 349
    iput-boolean v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    .line 351
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Landroid/hardware/Camera;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;->cancel(Z)Z

    .line 357
    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->j:Lcom/facebook/katana/activity/media/CameraHolder$LoadCameraTask;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraPreview;->a()V

    .line 371
    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 376
    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->i()V

    .line 380
    return-void
.end method

.method private t()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 504
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0, v6}, Lcom/facebook/katana/activity/media/FocusManager;->a(Landroid/hardware/Camera$Parameters;)V

    .line 505
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v1}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->t()Lcom/facebook/katana/activity/media/RotateLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    move-object v3, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/media/FocusManager;->a(Landroid/view/View;Landroid/view/View;Lcom/facebook/katana/activity/media/FocusManager$Listener;ZI)V

    .line 509
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 510
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/activity/media/MediaUtil;->a(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 519
    if-eqz v1, :cond_0

    .line 520
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 523
    :cond_0
    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 525
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/activity/media/MediaUtil;->a(Ljava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_1

    .line 527
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 531
    return-void
.end method

.method private v()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f060001

    .line 576
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 580
    iget-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->n:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 583
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 585
    iget-boolean v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->n:Z

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 587
    invoke-virtual {v0, v1, v2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 592
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "android.resource"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 597
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 598
    invoke-virtual {v4, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 602
    :try_start_0
    iget-object v5, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 603
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    new-instance v2, Lcom/facebook/katana/activity/media/CameraHolder$2;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/facebook/katana/activity/media/CameraHolder$2;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;Landroid/media/AudioManager;II)V

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 620
    new-instance v2, Lcom/facebook/katana/activity/media/CameraHolder$3;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/facebook/katana/activity/media/CameraHolder$3;-><init>(Lcom/facebook/katana/activity/media/CameraHolder;Landroid/media/AudioManager;II)V

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 628
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 629
    :goto_1
    return-void

    .line 580
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v2

    .line 605
    invoke-virtual {v0, v1, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 606
    const-string v0, "CameraHolder"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 682
    return-void
.end method

.method public final a(Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->g:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 177
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    iget v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera toggled without proper support from API"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->s()V

    .line 124
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    .line 127
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->q()V

    .line 128
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->m:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    .line 146
    :cond_0
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 147
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->l:I

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->n()V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/features/camera/CameraGating;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->n:Z

    .line 155
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->PORTRAIT:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->g:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 156
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FocusManager;->b()V

    .line 161
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->s()V

    .line 166
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->q()V

    .line 167
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->s()V

    .line 172
    return-void
.end method

.method public final h()Lcom/facebook/katana/activity/media/CameraPreview;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Lcom/facebook/katana/activity/media/CameraPreview;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;Lcom/facebook/katana/activity/media/FocusManager;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    .line 219
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->f:Lcom/facebook/katana/activity/media/CameraHolder$SurfaceCreatedListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraPreview;->setSurfaceListener(Lcom/facebook/katana/activity/media/CameraPreview$CreateSurfaceListener;)V

    .line 220
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/activity/media/CameraPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    invoke-interface {v0, v1}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->a(Lcom/facebook/katana/activity/media/CameraPreview;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->c:Lcom/facebook/katana/activity/media/CameraPreview;

    return-object v0
.end method

.method public final i()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/FocusManager;->a()V

    .line 638
    return-void
.end method

.method public final k()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 644
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    .line 645
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->d:Lcom/facebook/katana/activity/media/CameraFlash;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/CameraFlash;->a(Z)V

    .line 646
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->o:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 647
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder;->v()V

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public final l()V
    .locals 4

    .prologue
    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder;->i:Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 656
    const-string v1, "camera_focus"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "native camera focusing failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->i:Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/media/CameraHolder$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 668
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->k:Z

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder;->h:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/media/FocusManager;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
