.class public Lcom/facebook/orca/notify/InAppNotificationController;
.super Ljava/lang/Object;
.source "InAppNotificationController.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:I

.field private static final d:Lcom/facebook/orca/prefs/PrefKey;


# instance fields
.field private final e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final f:Lcom/facebook/orca/app/OrcaAppType;

.field private final g:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

.field private final h:Landroid/os/Handler;

.field private i:Landroid/app/Activity;

.field private j:Lcom/facebook/orca/notify/InAppNotificationView;

.field private k:Lcom/facebook/orca/common/async/CancellableRunnable;

.field private l:Lcom/facebook/orca/threads/Message;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/notify/InAppNotificationController;->a:J

    .line 35
    const-wide/16 v0, 0x1

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->a:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/notify/InAppNotificationController;->b:J

    .line 39
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    sput v0, Lcom/facebook/orca/notify/InAppNotificationController;->c:I

    .line 41
    const-string v0, "messenger_inapp_notify_android"

    invoke-static {v0}, Lcom/facebook/orca/prefs/PrefKeys;->d(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/notify/InAppNotificationController;->d:Lcom/facebook/orca/prefs/PrefKey;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaAppType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 65
    iput-object p2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->f:Lcom/facebook/orca/app/OrcaAppType;

    .line 66
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-direct {v0, p0}, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->h:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    return-object p1
.end method

.method private a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 149
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationView;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;-><init>(II)V

    .line 153
    sget v2, Lcom/facebook/orca/notify/InAppNotificationController;->c:I

    iput v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    .line 155
    const/16 v2, 0x44

    iput v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p1, v0}, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 162
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/notify/InAppNotificationView;->measure(II)V

    .line 166
    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getMeasuredHeight()I

    move-result v1

    .line 167
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 168
    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 169
    invoke-virtual {v2, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 170
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 171
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    invoke-direct {v1, p0, v5}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;B)V

    invoke-virtual {v2, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$3;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setOnDismissListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$4;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationView;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 247
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Landroid/view/ViewGroup;

    .line 249
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->SLIDE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    if-ne p1, v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->getMeasuredHeight()I

    move-result v0

    .line 226
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 227
    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 228
    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 229
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 230
    new-instance v0, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;B)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-static {v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Landroid/view/View;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->FADE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    if-ne p1, v0, :cond_1

    .line 233
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 234
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 235
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 236
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;

    invoke-direct {v1, p0, v4}, Lcom/facebook/orca/notify/InAppNotificationController$AnimatingListener;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;B)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/notify/InAppNotificationView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController;->b(Lcom/facebook/orca/threads/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/InAppNotificationController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->m:Z

    return p1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/facebook/orca/notify/InAppNotificationController;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->c()V

    return-void
.end method

.method private b(Lcom/facebook/orca/threads/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->e:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/notify/InAppNotificationController;->d:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    instance-of v0, v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    .line 95
    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->m:Z

    if-eqz v0, :cond_3

    .line 104
    iput-object p1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    instance-of v2, v1, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-nez v2, :cond_5

    .line 113
    sget v2, Lcom/facebook/orca/notify/InAppNotificationController;->c:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-eqz v2, :cond_5

    .line 124
    :goto_1
    instance-of v1, v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout;

    .line 131
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-nez v1, :cond_4

    .line 132
    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout;)Lcom/facebook/orca/notify/InAppNotificationView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 139
    :goto_2
    new-instance v0, Lcom/facebook/orca/common/async/CancellableRunnable;

    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/notify/InAppNotificationController$2;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/CancellableRunnable;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    sget-wide v2, Lcom/facebook/orca/notify/InAppNotificationController;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/notify/InAppNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/notify/InAppNotificationView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/CancellableRunnable;->a()V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/notify/InAppNotificationView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/high16 v4, 0x400

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->j:Lcom/facebook/orca/notify/InAppNotificationView;

    invoke-virtual {v0}, Lcom/facebook/orca/notify/InAppNotificationView;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/facebook/orca/notify/InAppNotificationController;->f:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v1}, Lcom/facebook/orca/app/OrcaAppType;->g()Lcom/facebook/orca/app/OrcaAppType$Product;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/app/OrcaAppType$Product;->MESSENGER:Lcom/facebook/orca/app/OrcaAppType$Product;

    if-ne v1, v2, :cond_2

    .line 197
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const-class v3, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 201
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 211
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->e()V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    const-class v3, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->i:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private d()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->FADE_OUT:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    .line 216
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->e()V

    .line 217
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/notify/InAppNotificationController;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/facebook/orca/notify/InAppNotificationController;->e()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/notify/InAppNotificationController;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->l:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/CancellableRunnable;->a()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->k:Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 311
    :cond_0
    sget-object v0, Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;->NONE:Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/InAppNotificationController;->a(Lcom/facebook/orca/notify/InAppNotificationController$DismissAnimation;)V

    .line 312
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->g:Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/notify/InAppNotificationController;->h:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/notify/InAppNotificationController$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/notify/InAppNotificationController$1;-><init>(Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/threads/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
