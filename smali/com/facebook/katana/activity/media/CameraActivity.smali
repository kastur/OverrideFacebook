.class public Lcom/facebook/katana/activity/media/CameraActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;
.implements Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;


# static fields
.field private static t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile u:Landroid/net/Uri;

.field private static final v:Ljava/lang/Object;


# instance fields
.field private A:Lcom/facebook/katana/activity/media/RotateLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/facebook/katana/activity/media/RotateLayout;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/Button;

.field private e:Lcom/facebook/katana/activity/media/CameraPreview;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/katana/util/logging/PerformanceMarker;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Z

.field private m:Z

.field private n:J

.field private o:I

.field private p:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

.field private q:Lcom/facebook/katana/activity/media/CameraHolder;

.field private r:Landroid/net/Uri;

.field private s:Z

.field private w:Landroid/view/OrientationEventListener;

.field private final x:Landroid/view/View$OnTouchListener;

.field private final y:Landroid/view/View$OnClickListener;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 136
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity$Orientation;->LANDSCAPE:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->p:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->r:Landroid/net/Uri;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 376
    new-instance v0, Lcom/facebook/katana/activity/media/CameraActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/CameraActivity$4;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->x:Landroid/view/View$OnTouchListener;

    .line 397
    new-instance v0, Lcom/facebook/katana/activity/media/CameraActivity$5;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/CameraActivity$5;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 766
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/facebook/katana/activity/media/Storage;->b()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->r:Landroid/net/Uri;

    .line 768
    const-string v1, "output"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->r:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 769
    const/16 v1, 0x53b

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 770
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    const/16 v1, 0x538

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 778
    return-void
.end method

.method private C()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 872
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    const v2, 0x7f04000e

    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 874
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 875
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 162
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;J)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_target_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source_activity"

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraActivity;Lcom/facebook/katana/activity/media/CameraActivity$Orientation;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->p:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraHolder;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    return-object v0
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 361
    iget-boolean v3, p0, Lcom/facebook/katana/activity/media/CameraActivity;->l:Z

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->n:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/content/Context;Landroid/net/Uri;IZJ)Landroid/content/Intent;

    move-result-object v0

    .line 363
    const-string v1, "camera_session_id"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const/16 v1, 0x536

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->j(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CameraActivity;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const v0, 0x7f04000a

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_no_composer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source_activity"

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 207
    const-string v0, "launching composer for video due to native camera"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 210
    const-string v2, "result_tags"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string v1, "camera_session_id"

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "mediaContentType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->l:Z

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v3, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v1, "extra_video_request_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/16 v0, 0x539

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->n:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->w()V

    return-void
.end method

.method private static b([BI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;

    invoke-direct {v2, p0, p1}, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;-><init>([BI)V

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->t:Ljava/lang/ref/SoftReference;

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CameraActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraActivity;->f(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/view/OrientationEventListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method private static c(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_0
    sput-object p0, Lcom/facebook/katana/activity/media/CameraActivity;->u:Landroid/net/Uri;

    .line 228
    if-eqz p0, :cond_0

    .line 229
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 231
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/CameraActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->i(I)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/CameraActivity;)Lcom/facebook/katana/activity/media/CameraActivity$Orientation;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->p:Lcom/facebook/katana/activity/media/CameraActivity$Orientation;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/CameraActivity;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraActivity;->g(I)Z

    move-result v0

    return v0
.end method

.method private e(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 290
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    const v1, 0x7f0b0490

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b048e

    new-instance v3, Lcom/facebook/katana/activity/media/CameraActivity$3;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/media/CameraActivity$3;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b048f

    new-instance v3, Lcom/facebook/katana/activity/media/CameraActivity$2;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/media/CameraActivity$2;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/facebook/katana/activity/media/CameraActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/media/CameraActivity$1;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/CameraActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static f()Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;
    .locals 2

    .prologue
    .line 200
    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->t:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/CameraActivity$CameraPhotoData;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 297
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/CameraActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->C()Z

    move-result v0

    return v0
.end method

.method public static g()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 236
    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->u:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 240
    :try_start_1
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->u:Landroid/net/Uri;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/media/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->B()V

    return-void
.end method

.method private static g(I)Z
    .locals 1
    .parameter

    .prologue
    .line 302
    const/16 v0, 0x140

    if-lt p0, v0, :cond_0

    const/16 v0, 0x168

    if-le p0, v0, :cond_1

    :cond_0
    if-ltz p0, :cond_2

    const/16 v0, 0x28

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(I)V
    .locals 2
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->k:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 314
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->z:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 315
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 316
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->G:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 317
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/view/View;I)V

    .line 318
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->F:Lcom/facebook/katana/activity/media/RotateLayout;

    const v0, 0x7f040013

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/RotateLayout;->setOrientation(I)V

    .line 320
    return-void

    .line 318
    :cond_0
    const/16 v0, 0x5a

    goto :goto_0
.end method

.method private j(I)V
    .locals 2
    .parameter

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 628
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    :goto_0
    const/16 v1, 0x537

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 636
    :cond_0
    return-void

    .line 629
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 630
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static v()V
    .locals 2

    .prologue
    .line 249
    sget-object v1, Lcom/facebook/katana/activity/media/CameraActivity;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->t:Ljava/lang/ref/SoftReference;

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/activity/media/CameraActivity;->u:Landroid/net/Uri;

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 435
    const v0, 0x7f0b0491

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 438
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->f:Landroid/widget/RelativeLayout;

    .line 444
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->B:Landroid/widget/RelativeLayout;

    .line 445
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    .line 446
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->i:Landroid/widget/RelativeLayout;

    .line 447
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/RotateLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->A:Lcom/facebook/katana/activity/media/RotateLayout;

    .line 448
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->k:Landroid/widget/Button;

    .line 449
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    .line 450
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->D:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->E:Landroid/widget/TextView;

    .line 452
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/media/RotateLayout;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->F:Lcom/facebook/katana/activity/media/RotateLayout;

    .line 454
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->G:Landroid/widget/ImageView;

    .line 455
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    .line 456
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 462
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 464
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->h:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 465
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->h:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 470
    if-eqz p1, :cond_0

    .line 471
    const-string v0, "camera_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 473
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "source_activity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    .line 483
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->requestWindowFeature(I)Z

    .line 484
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 485
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 486
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->setContentView(I)V

    .line 488
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/CameraActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "started_from_launcher"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 491
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->x()V

    .line 493
    const-string v2, "desired_initial_facing"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->o:I

    .line 496
    new-instance v2, Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {v2, p0, p0, v1}, Lcom/facebook/katana/activity/media/CameraHolder;-><init>(Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    .line 497
    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$6;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p0, v2}, Lcom/facebook/katana/activity/media/CameraActivity$6;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    .line 513
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraHolder;->d()V

    .line 515
    const-string v1, "extra_no_composer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->l:Z

    .line 516
    const-string v1, "extra_target_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->n:J

    .line 518
    const-string v1, "extra_disable_video"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->m:Z

    .line 520
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraHolder;->i()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 522
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->B:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$7;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$9;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$9;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 572
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->x:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 573
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    const v0, 0x7f080062

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->z:Landroid/widget/ImageView;

    .line 575
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 577
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->m:Z

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 590
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->D:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$11;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$11;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->E:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$12;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$12;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    return-void

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$8;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/facebook/katana/activity/media/CameraActivity$10;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/CameraActivity$10;-><init>(Lcom/facebook/katana/activity/media/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public final a(Lcom/facebook/katana/activity/media/CameraPreview;)V
    .locals 2
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 783
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->e:Lcom/facebook/katana/activity/media/CameraPreview;

    .line 784
    return-void
.end method

.method public final a([BI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 844
    invoke-static {p1, p2}, Lcom/facebook/katana/activity/media/CameraActivity;->b([BI)V

    .line 845
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/net/Uri;I)V

    .line 846
    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 4
    .parameter

    .prologue
    .line 856
    invoke-static {p1}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Landroid/net/Uri;)V

    .line 857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 901
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 621
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 622
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 789
    if-nez p1, :cond_0

    .line 792
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->showDialog(I)V

    .line 793
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not load camera, exiting"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_0
    return-void

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->A:Lcom/facebook/katana/activity/media/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/RotateLayout;->setVisibility(I)V

    .line 801
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 802
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 913
    if-eqz p1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->bringToFront()V

    .line 920
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->setResult(I)V

    .line 610
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    .line 611
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 825
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->A:Lcom/facebook/katana/activity/media/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/RotateLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->e:Lcom/facebook/katana/activity/media/CameraPreview;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->e:Lcom/facebook/katana/activity/media/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->e:Lcom/facebook/katana/activity/media/CameraPreview;

    .line 832
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 833
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 839
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 641
    invoke-static {}, Lcom/facebook/katana/activity/media/CameraActivity;->v()V

    .line 645
    iput-boolean v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 646
    const/16 v0, 0x53a

    if-ne p1, v0, :cond_1

    .line 647
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 648
    packed-switch p2, :pswitch_data_0

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->A()V

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->B()V

    goto :goto_0

    .line 656
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->j(I)V

    goto :goto_0

    .line 659
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/media/CameraActivity;->j(I)V

    goto :goto_0

    .line 662
    :pswitch_4
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    goto :goto_0

    .line 667
    :cond_1
    if-eqz p2, :cond_0

    .line 670
    const/16 v0, 0x539

    if-ne p1, v0, :cond_2

    .line 671
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 672
    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/activity/media/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 673
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    goto :goto_0

    .line 674
    :cond_2
    const/16 v0, 0x536

    if-ne p1, v0, :cond_3

    .line 675
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 676
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 677
    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/activity/media/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 678
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    goto :goto_0

    .line 680
    :cond_3
    const/16 v0, 0x537

    if-ne p1, v0, :cond_b

    .line 681
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 682
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 683
    if-nez v3, :cond_4

    .line 687
    iput-boolean v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    goto :goto_0

    .line 691
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v5

    .line 693
    const/4 v0, 0x0

    .line 699
    const-string v6, "image/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 701
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Landroid/net/Uri;)V

    .line 702
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_5

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move v3, v4

    move v0, v1

    .line 724
    :goto_1
    if-eqz v3, :cond_9

    .line 725
    iput-boolean v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 726
    const v0, 0x7f0b03a5

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    move v3, v1

    move-object v2, v0

    move v0, v1

    .line 710
    goto :goto_1

    :cond_6
    const-string v6, "video/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 712
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->b(Landroid/net/Uri;)V

    .line 713
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/facebook/katana/activity/media/Storage;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 715
    if-eqz v3, :cond_7

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move v3, v4

    move v7, v2

    move-object v2, v0

    move v0, v7

    goto :goto_1

    :cond_7
    move v3, v1

    move v7, v2

    move-object v2, v0

    move v0, v7

    .line 720
    goto :goto_1

    .line 721
    :cond_8
    const-string v2, "CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown content type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    move-object v2, v0

    move v0, v4

    goto :goto_1

    .line 731
    :cond_9
    if-nez v2, :cond_a

    .line 732
    iput-boolean v4, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 733
    const v0, 0x7f0b03a3

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 737
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "URI: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Ljava/lang/String;)V

    move-object v1, v2

    .line 758
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 739
    :cond_b
    const/16 v0, 0x538

    if-ne p1, v0, :cond_c

    .line 740
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 741
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 742
    :cond_c
    const/16 v0, 0x53b

    if-ne p1, v0, :cond_e

    .line 743
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 744
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->l:Z

    if-eqz v0, :cond_d

    .line 745
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 746
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraActivity;->r:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 748
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 750
    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->r:Landroid/net/Uri;

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_2

    .line 752
    :cond_e
    const/16 v0, 0x53c

    if-ne p1, v0, :cond_0

    .line 754
    iput-boolean v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    .line 755
    const-string v0, "media_item"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MediaItem;

    .line 757
    if-eqz v0, :cond_0

    .line 758
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/katana/model/MediaItem;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_f
    move v0, v2

    move-object v1, v3

    goto :goto_2

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraActivity;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    .line 868
    :cond_0
    return-void
.end method

.method protected synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraActivity;->e(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 814
    packed-switch p1, :pswitch_data_0

    .line 819
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 816
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->w:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 350
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->g()V

    .line 351
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 352
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 328
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->s:Z

    if-eqz v0, :cond_1

    .line 329
    const-string v0, "blocked onResume() since activity is redirecting"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->c(Ljava/lang/String;)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->h:Lcom/facebook/katana/util/logging/PerformanceMarker;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->h:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->h:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 344
    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/features/camera/CameraGating;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/CameraFallbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x53a

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/CameraHolder;->f()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 431
    const-string v0, "camera_session_id"

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 884
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onStop()V

    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraActivity;->q:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/media/CameraHolder;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 889
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 850
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CameraActivity;->b(Z)V

    .line 851
    return-void
.end method

.method public final t()Lcom/facebook/katana/activity/media/RotateLayout;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->A:Lcom/facebook/katana/activity/media/RotateLayout;

    return-object v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/facebook/katana/activity/media/CameraActivity;->o:I

    return v0
.end method
