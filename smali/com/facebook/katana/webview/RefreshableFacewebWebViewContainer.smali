.class public Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;
.super Landroid/widget/RelativeLayout;
.source "RefreshableFacewebWebViewContainer.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

.field private i:Lcom/facebook/katana/webview/FacewebWebView;

.field private j:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

.field private k:Landroid/view/View;

.field private l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Landroid/view/animation/TranslateAnimation;

.field private r:Landroid/view/animation/RotateAnimation;

.field private s:Z

.field private t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field private u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

.field private v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    .line 95
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g:Z

    .line 118
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->s:Z

    .line 128
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 137
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 139
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    .line 95
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g:Z

    .line 118
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->s:Z

    .line 128
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 137
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 139
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    .line 95
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g:Z

    .line 118
    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->s:Z

    .line 128
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 137
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 139
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 66
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    return-object v0
.end method

.method private declared-synchronized a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 541
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    int-to-float v3, v3

    int-to-float v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    .line 542
    if-eqz p2, :cond_1

    .line 543
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 544
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 546
    :cond_1
    if-nez p1, :cond_2

    .line 547
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$9;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 556
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    .line 560
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 565
    :goto_0
    iput p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 562
    :cond_3
    :try_start_1
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 563
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->q:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b:I

    .line 236
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    .line 238
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->d:I

    .line 242
    invoke-virtual {p0, v4}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->setBackgroundColor(I)V

    .line 245
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    iget v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->d:I

    add-int/2addr v1, v2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 251
    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    neg-int v1, v1

    iget v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->d:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 252
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;

    invoke-direct {v0, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$3;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->j:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    .line 276
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->j:Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;

    invoke-static {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Landroid/content/Context;Lcom/facebook/katana/webview/FacewebWebView$FacewebWebViewListener;)Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    .line 278
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$4;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    invoke-direct {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f()V

    .line 290
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    .line 296
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 297
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 298
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    iget-object v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v2, "enablePullToRefresh"

    new-instance v3, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$5;

    invoke-direct {v3, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$5;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 312
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v2, "disablePullToRefresh"

    new-instance v3, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$6;

    invoke-direct {v3, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$6;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 321
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v2, "loadCompleted"

    new-instance v3, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$7;

    invoke-direct {v3, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$7;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 330
    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    .line 331
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v1, v6}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 336
    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Landroid/view/LayoutInflater;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b(Landroid/view/LayoutInflater;)V

    .line 340
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1}, Lcom/facebook/katana/webview/FacewebWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    .line 341
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 342
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 344
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 345
    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->s:Z

    if-nez v0, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g()V

    .line 351
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    invoke-direct {p0, v0, v5}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 355
    :cond_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->r:Landroid/view/animation/RotateAnimation;

    .line 356
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 357
    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    return-void
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 370
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Z)V

    return-void
.end method

.method private a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V
    .locals 1
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 504
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewItem;->setState(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 505
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b044e

    const v4, 0x7f0b044d

    .line 142
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m.facebook.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/l.php"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const-string v2, "u"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 164
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 173
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 175
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$1;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g:Z

    .line 585
    invoke-direct {p0, p1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b(Z)V

    .line 586
    return-void
.end method

.method private b(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 377
    const v0, 0x7f030030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$8;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$8;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->h()V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 597
    :cond_0
    if-eqz p1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setOverScrollMode(I)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setOverScrollMode(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    return-object v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 811
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

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
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setLongClickable(Z)V

    .line 203
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$2;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 229
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    .line 509
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 510
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    iput-boolean v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    .line 515
    iput-boolean v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->s:Z

    .line 517
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v1, :cond_3

    .line 518
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 519
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->setVisibility(I)V

    .line 521
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    if-gt v0, v1, :cond_2

    .line 524
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 525
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    iget v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    if-ne v0, v1, :cond_0

    .line 526
    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    goto :goto_0

    .line 529
    :cond_2
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_0

    .line 533
    :cond_3
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 684
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 688
    new-instance v1, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 689
    return-void
.end method

.method private static j()Z
    .locals 2

    .prologue
    .line 819
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k()Z
    .locals 2

    .prologue
    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 703
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq v0, v1, :cond_1

    .line 706
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RefreshableFacewebWebViewContainer: taking a snapshotwhile not showing a webview.  This will result in a blank screen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq v0, p1, :cond_2

    .line 713
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    iput-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 715
    :cond_2
    iput-object p1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    .line 718
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq p1, v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 723
    :cond_3
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_ERROR:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq p1, v0, :cond_4

    .line 724
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :cond_4
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq p1, v0, :cond_5

    .line 731
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/webview/FacewebWebView;->setVisibility(I)V

    .line 732
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 733
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_5
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq p1, v0, :cond_6

    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->c()V

    .line 745
    :cond_6
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne p1, v0, :cond_7

    .line 746
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0

    .line 749
    :cond_7
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_ERROR:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne p1, v0, :cond_8

    .line 750
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 752
    invoke-direct {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i()V

    goto :goto_0

    .line 754
    :cond_8
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne p1, v0, :cond_c

    .line 757
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 759
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_9

    .line 760
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/webview/FacewebWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 764
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->bringToFront()V

    goto/16 :goto_0

    .line 766
    :cond_a
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 770
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->bringToFront()V

    .line 772
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 774
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 776
    new-instance v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$10;

    invoke-direct {v1, p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$10;-><init>(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 782
    iget-object v1, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 786
    :cond_b
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->bringToFront()V

    goto/16 :goto_0

    .line 792
    :cond_c
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne p1, v0, :cond_0

    .line 793
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 795
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->b()Z

    move-result v0

    if-nez v0, :cond_d

    .line 796
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->a()V

    .line 799
    :cond_d
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->l:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$WebViewPlacement;->bringToFront()V

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x3fe8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    iget-boolean v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/webview/FacewebWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 497
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 395
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v2, v1

    .line 483
    :goto_2
    if-eqz v2, :cond_0

    .line 492
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-eq v0, v1, :cond_3

    .line 493
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v8, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/webview/FacewebWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_4

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    move v2, v1

    goto :goto_2

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v2, :cond_2

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v2, v0

    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    int-to-double v4, v0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    move v2, v1

    goto :goto_2

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v3, :cond_5

    .line 407
    invoke-direct {p0, v2, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 408
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 409
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    goto :goto_2

    .line 411
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v3, :cond_6

    .line 412
    invoke-virtual {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b()V

    goto :goto_2

    .line 414
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v3, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    if-ne v0, v3, :cond_2

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    .line 416
    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 417
    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    if-le v0, v3, :cond_2

    .line 419
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    goto :goto_2

    .line 426
    :pswitch_2
    sget-object v0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$11;->a:[I

    iget-object v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->t:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-virtual {v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 428
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 429
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    if-gez v0, :cond_7

    .line 430
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 431
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    move v2, v1

    .line 432
    goto/16 :goto_2

    .line 437
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v8

    if-ltz v0, :cond_2

    .line 438
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    move v2, v1

    .line 443
    goto/16 :goto_2

    .line 445
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v6

    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b:I

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_8

    move v0, v1

    .line 447
    :goto_3
    iget-object v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v3}, Lcom/facebook/katana/webview/FacewebWebView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->p:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    .line 449
    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 450
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 451
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 445
    goto :goto_3

    .line 456
    :pswitch_5
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    if-gez v0, :cond_9

    .line 457
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 458
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 459
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    move v2, v1

    .line 460
    goto/16 :goto_2

    .line 462
    :cond_9
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    if-le v0, v3, :cond_a

    .line 463
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 465
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    .line 466
    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    goto/16 :goto_2

    .line 470
    :pswitch_6
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    if-gez v0, :cond_b

    .line 471
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 472
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 473
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 474
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    move v2, v1

    .line 475
    goto/16 :goto_2

    .line 477
    :cond_b
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e:I

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    if-ge v0, v3, :cond_c

    .line 478
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-direct {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;)V

    .line 480
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->f:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    .line 481
    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    goto/16 :goto_2

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 426
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 570
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/katana/webview/FacewebWebView;->scrollTo(II)V

    .line 571
    invoke-direct {p0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->g()V

    .line 572
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->e()V

    .line 573
    iget v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c:I

    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(IZ)V

    .line 574
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->setVerticalScrollBarEnabled(Z)V

    .line 575
    return-void
.end method

.method public final c()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->i:Lcom/facebook/katana/webview/FacewebWebView;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 670
    invoke-static {}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->u:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_WEBVIEW_SNAPSHOT:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    if-eq v0, v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->v:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    goto :goto_0
.end method
