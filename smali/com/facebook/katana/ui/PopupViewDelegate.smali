.class public Lcom/facebook/katana/ui/PopupViewDelegate;
.super Ljava/lang/Object;
.source "PopupViewDelegate.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lcom/facebook/katana/ui/CustomRelativeLayout;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Lcom/facebook/katana/util/logging/InteractionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/katana/ui/PopupViewDelegate;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9ft 0x2t 0x8t 0x7ft
        0xa1t 0x2t 0x8t 0x7ft
        0xa4t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/facebook/katana/ui/PopupViewDelegate$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ui/PopupViewDelegate$1;-><init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->d:Ljava/lang/Runnable;

    .line 65
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->CLOSED:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    .line 66
    iput-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->l:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->c:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p1}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->n:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->e:I

    .line 97
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->f:I

    .line 99
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->g:I

    .line 103
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->h:I

    .line 104
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->i:I

    .line 105
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->j:I

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    const v1, 0x7f0300e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/CustomRelativeLayout;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    const v1, 0x7f08029d

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ui/PopupViewDelegate$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ui/PopupViewDelegate$2;-><init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    new-instance v1, Lcom/facebook/katana/ui/PopupViewDelegate$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ui/PopupViewDelegate$3;-><init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setOnLayoutChangedListener(Lcom/facebook/katana/ui/CustomRelativeLayout$LayoutChangedListener;)V

    .line 131
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    const v1, 0x7f0802a2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ui/PopupViewDelegate$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ui/PopupViewDelegate$4;-><init>(Lcom/facebook/katana/ui/PopupViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_0

    .line 403
    const v1, 0x7f0802a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 408
    instance-of v2, v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, v1

    .line 410
    check-cast v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    .line 412
    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->freeMemory()V

    .line 414
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->destroy()V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 456
    invoke-direct {p0, p2}, Lcom/facebook/katana/ui/PopupViewDelegate;->b(I)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 457
    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 461
    const v1, 0x7f0802a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 463
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 466
    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-direct {v1, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-virtual {v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 473
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setScrollBarStyle(I)V

    .line 474
    const-string v1, "openDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 476
    const-string v1, "closeDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 478
    const-string v1, "nativethirdparty"

    new-instance v2, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 480
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->i()V

    .line 483
    if-eqz p3, :cond_0

    .line 484
    invoke-virtual {v0, p3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 489
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->onResume()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/ui/PopupViewDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ui/PopupViewDelegate;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->n:Lcom/facebook/katana/util/logging/InteractionLogger;

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Z)V

    .line 532
    return-void
.end method

.method public static a(Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->NOTIFICATIONS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->MESSAGES:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/ui/PopupViewDelegate;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)Lcom/facebook/katana/webview/FacewebWebView;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    const v2, 0x7f0802a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    if-nez v0, :cond_0

    move-object v0, v1

    .line 451
    :goto_0
    return-object v0

    .line 444
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 445
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    instance-of v2, v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    if-eqz v2, :cond_1

    .line 447
    check-cast v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 451
    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0802a3

    const v2, 0x7f0802a1

    const/4 v3, 0x0

    .line 241
    invoke-direct {p0, p4}, Lcom/facebook/katana/ui/PopupViewDelegate;->c(I)V

    .line 243
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$5;->a:[I

    invoke-virtual {p2}, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The Popup view state isn\'t supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->FRIEND_REQUESTS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    .line 249
    const v1, 0x7f08029f

    .line 250
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->c:Ljava/lang/String;

    .line 295
    :goto_0
    iput-object p3, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->l:Ljava/lang/String;

    .line 298
    sget-object v4, Lcom/facebook/katana/ui/PopupViewDelegate;->a:[I

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget v6, v4, v2

    .line 299
    if-eq v6, v1, :cond_0

    .line 300
    iget-object v7, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v7, v6}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :pswitch_1
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->MESSAGES:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    .line 256
    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->d:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    const v4, 0x7f0802a0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 271
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    move-object v0, p1

    .line 272
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 273
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v4, Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-direct {v4}, Lcom/facebook/orca/threadlist/ThreadListFragment;-><init>()V

    invoke-virtual {v0, v6, v4}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    move-object v0, v1

    move v1, v2

    .line 277
    goto :goto_0

    .line 282
    :pswitch_2
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->NOTIFICATIONS:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    .line 283
    const v1, 0x7f0802a4

    .line 284
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->b:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->l()V

    .line 306
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-direct {p0, p1, v1, p3}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 311
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->i()V

    .line 313
    iget-object v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->bringToFront()V

    .line 317
    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Ljava/lang/String;)V

    .line 318
    return-void

    :cond_3
    move-object v0, v1

    move v1, v2

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/facebook/katana/ui/PopupViewDelegate;)Lcom/facebook/katana/ui/CustomRelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    return-object v0
.end method

.method private c(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    const v1, 0x7f0802a7

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 515
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 517
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 518
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 519
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 520
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 521
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    return-void
.end method

.method static synthetic h()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate;->a:[I

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 168
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v0}, Lcom/facebook/katana/ui/CustomRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 172
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 174
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    if-gt v3, v4, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 181
    :goto_0
    if-eqz v1, :cond_1

    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->g:I

    :goto_1
    iget v6, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->i:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    .line 183
    if-ge v0, v3, :cond_2

    .line 184
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 195
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 199
    sub-int v0, v4, v0

    iget v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->e:I

    sub-int v2, v0, v2

    .line 200
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->f:I

    :goto_3
    iget v3, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->h:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->i:I

    add-int/2addr v0, v3

    .line 202
    if-ge v0, v2, :cond_5

    .line 203
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 217
    :goto_4
    const/16 v0, 0xa

    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 220
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    const v1, 0x7f08029e

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 224
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 181
    :cond_1
    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->f:I

    goto :goto_1

    .line 186
    :cond_2
    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 187
    iget v3, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->j:I

    if-le v0, v3, :cond_3

    .line 188
    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->j:I

    .line 190
    :cond_3
    neg-int v3, v0

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 191
    neg-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 200
    :cond_4
    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->g:I

    goto :goto_3

    .line 205
    :cond_5
    sub-int/2addr v0, v2

    .line 206
    iget v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->j:I

    if-le v0, v2, :cond_6

    .line 207
    iget v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->j:I

    .line 210
    :cond_6
    if-eqz v1, :cond_7

    .line 211
    neg-int v0, v0

    iget v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->e:I

    add-int/2addr v0, v1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_4

    .line 213
    :cond_7
    neg-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_4
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 376
    sget-object v1, Lcom/facebook/katana/ui/PopupViewDelegate$5;->a:[I

    iget-object v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    invoke-virtual {v2}, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 389
    :goto_0
    :pswitch_0
    return v0

    .line 378
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private k()I
    .locals 2

    .prologue
    .line 421
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$5;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    invoke-virtual {v1}, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 432
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 423
    :pswitch_0
    const v0, 0x7f08029f

    goto :goto_0

    .line 426
    :pswitch_1
    const v0, 0x7f0802a1

    goto :goto_0

    .line 429
    :pswitch_2
    const v0, 0x7f0802a4

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private l()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->n:Lcom/facebook/katana/util/logging/InteractionLogger;

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    .line 539
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->CLOSED:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    .line 323
    iput-object v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->l:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->n:Lcom/facebook/katana/util/logging/InteractionLogger;

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;)V

    .line 327
    iput-object v2, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->m:Ljava/lang/String;

    .line 329
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->k()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->l:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 366
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    sget-object v0, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->CLOSED:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-ne p2, v0, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->a()V

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {p1}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/ui/PopupViewDelegate;->b(Landroid/app/Activity;Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/facebook/katana/ui/CustomRelativeLayout;->setPadding(IIII)V

    .line 509
    invoke-direct {p0, p2}, Lcom/facebook/katana/ui/PopupViewDelegate;->c(I)V

    .line 510
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    sget-object v1, Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;->CLOSED:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->k()I

    move-result v1

    .line 340
    sget-object v2, Lcom/facebook/katana/ui/PopupViewDelegate;->a:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget v4, v2, v0

    .line 342
    if-ne v4, v1, :cond_1

    .line 344
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 345
    invoke-direct {p0, v1}, Lcom/facebook/katana/ui/PopupViewDelegate;->b(I)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v4

    .line 346
    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v4}, Lcom/facebook/katana/webview/FacewebWebView;->onPause()V

    .line 340
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, v4}, Lcom/facebook/katana/ui/PopupViewDelegate;->a(I)V

    goto :goto_1

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->d:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    .line 372
    return-void
.end method

.method public final e()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/facebook/katana/ui/PopupViewDelegate;->k()I

    move-result v0

    .line 497
    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ui/PopupViewDelegate;->b(I)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->b:Lcom/facebook/katana/ui/CustomRelativeLayout;

    return-object v0
.end method

.method public final g()Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/facebook/katana/ui/PopupViewDelegate;->k:Lcom/facebook/katana/ui/PopupViewDelegate$PopupState;

    return-object v0
.end method
