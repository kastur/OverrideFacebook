.class public Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;
.super Lcom/facebook/katana/fragment/BaseFacebookFragment;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;


# static fields
.field private static final an:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ao:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected J:Lcom/facebook/katana/webview/FacewebWebView;

.field private final K:Landroid/os/Handler;

.field private L:Landroid/content/Intent;

.field private M:I

.field private final N:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

.field private O:Z

.field private final P:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

.field private final Q:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;

.field private final R:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;

.field private final S:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;

.field private T:J

.field private U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

.field private V:J

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/facebook/katana/binding/AppSession;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:Ljava/lang/String;

.field private ag:Lcom/facebook/katana/TabProgressListener;

.field private ah:Z

.field private ai:Lcom/facebook/katana/util/logging/InteractionLogger;

.field private aj:[Lorg/json/JSONObject;

.field private ak:J

.field private al:Z

.field private am:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 240
    sput-object v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->an:Ljava/util/Set;

    const-string v1, "fw_photo_uploaded"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ao:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 117
    invoke-direct {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;-><init>()V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    .line 167
    iput v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    .line 168
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->N:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    .line 171
    iput-boolean v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->O:Z

    .line 172
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->P:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    .line 176
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Q:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;

    .line 180
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->R:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;

    .line 182
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->S:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;

    .line 190
    iput-wide v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->T:J

    .line 200
    iput-object v5, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    .line 202
    iput-wide v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    .line 224
    iput-object v5, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    .line 226
    iput-wide v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->al:Z

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->am:Ljava/util/Map;

    .line 2742
    return-void
.end method

.method static synthetic E()Ljava/util/Set;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->an:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic F()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ao:Ljava/util/HashSet;

    return-object v0
.end method

.method private I()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 264
    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    iget v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    if-eq v2, v3, :cond_0

    .line 267
    iget v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->N:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->P:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 280
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Q:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 283
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->R:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 284
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->S:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 285
    return-void
.end method

.method private J()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    .line 407
    iget-wide v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    move v0, v1

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v5

    .line 417
    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    if-nez v3, :cond_7

    .line 419
    new-instance v3, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-direct {v3, v5}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    move v3, v1

    move v4, v2

    .line 425
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->L()V

    .line 428
    iget-boolean v6, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->al:Z

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    .line 429
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->f()V

    .line 432
    :cond_0
    if-eqz v3, :cond_1

    .line 434
    invoke-direct {p0, v5}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/BaseFacebookActivity;)V

    .line 437
    :cond_1
    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v4}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    .line 445
    :goto_2
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v2, v1

    .line 448
    :cond_3
    if-eqz v2, :cond_c

    .line 453
    if-eqz v4, :cond_4

    .line 454
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    sget-object v1, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;->CONTENT_STATE_LOADING:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->a(Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer$ContentState;)V

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->d()Ljava/util/List;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_b

    .line 464
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 465
    const-string v0, "android_fw_ssl"

    invoke-static {v2, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    const-string v0, "https://%s/"

    .line 469
    :goto_3
    invoke-static {v2, v0}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;

    .line 473
    invoke-virtual {v0}, Lcom/facebook/katana/model/SessionCookieFromAuthLogin;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {v3, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move v0, v2

    .line 407
    goto/16 :goto_0

    :cond_7
    move v3, v2

    move v4, v1

    .line 421
    goto :goto_1

    :cond_8
    move v4, v2

    .line 437
    goto :goto_2

    .line 468
    :cond_9
    const-string v0, "http://%s/"

    goto :goto_3

    .line 476
    :cond_a
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 479
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->e()V

    .line 482
    :cond_b
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/facebook/katana/activity/BaseFacebookActivity;->n()J

    move-result-wide v1

    invoke-static {v5, v0, v1, v2}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 483
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;)V

    .line 485
    :cond_c
    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 784
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 788
    :cond_0
    return-void
.end method

.method private L()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 792
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 793
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v1}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 795
    if-nez v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    .line 805
    return-void

    .line 802
    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->T:J

    return-wide p1
.end method

.method protected static a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 2630
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 2634
    :goto_0
    return-wide v0

    .line 2633
    :catch_0
    move-exception v0

    .line 2634
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ac:Ljava/util/List;

    return-object v0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 841
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 842
    const-string v0, "profiles"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    const-string v0, "profiles"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 848
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 849
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 851
    :try_start_0
    const-string v0, "action"

    const-string v4, "didPickFriends"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 852
    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-wide v5, v1, v0

    .line 853
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 855
    :cond_0
    const-string v0, "pickedFriends"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 863
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 864
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    new-instance v3, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 874
    :cond_1
    :goto_2
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v1

    const-string v3, "inconceivable exception"

    invoke-static {v1, v3, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 868
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 869
    const-string v0, "FacewebError"

    const-string v1, "Invite friend callback unset."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private a(Lcom/facebook/katana/activity/BaseFacebookActivity;)V
    .locals 6
    .parameter

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ae:Z

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "setToolbarSegments"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Q:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetToolbarSegmentsHandler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showPlanComposer"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPlanComposerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPlanComposerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 502
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showPlansEditing"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$EditPlanHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$EditPlanHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 504
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showComposer"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFeedCommentComposerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFeedCommentComposerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 506
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showCommentPublisher"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->R:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCommentPublisherHandler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 508
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showCheckinComposer"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCheckinComposerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowCheckinComposerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 510
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showFriendPicker"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowFriendPickerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 512
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "addNativeEventListener"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$AddNativeEventListenerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 514
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showPublisher"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->P:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 516
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "removePublisher"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$2;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Lcom/facebook/katana/activity/BaseFacebookActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 524
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showMsgComposer"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowMessageComposerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowMessageComposerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 527
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "callCell"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    const-string v4, "android.intent.action.DIAL"

    const-string v5, "tel:"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 529
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "callSMS"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "sms:"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CallTextCellHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 532
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showActionSheet"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowActionSheetHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowActionSheetHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "uploadPhoto"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowUploadPhotoHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 538
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "reviewVaultImage"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowVaultReviewHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowVaultReviewHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 541
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showStatusComposer"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowStatusComposerHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowStatusComposerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 544
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showMsgReplyPublisher"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->S:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowReplyPublisherHandler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 547
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$UpdateNativeLoadingIndicator;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    .line 548
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v2, "pageLoading"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 549
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v2, "pageLoaded"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 551
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "appLog"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/AppLogHandler;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/faceweb/AppLogHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 554
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "setNavBarButton"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->N:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarButton;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "setActionMenu"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetActionMenuHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 560
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "openDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/OpenWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 562
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "closeDialogWebview"

    new-instance v2, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/CloseWebViewHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 565
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showPickerView"

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Y:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 568
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "enablePullToRefresh"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$3;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 576
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "close"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 579
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "back"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$CloseAndBackHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 582
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/facebook/katana/webview/FacewebWebView;->setScrollBarStyle(I)V

    .line 583
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "setNavBarHidden"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$SetNavBarHiddenHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 585
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "dismissModalDialog"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$DismissModalDialog;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$DismissModalDialog;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 588
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "perf.cachedResponseLoaded"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$4;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/activity/BaseFacebookActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 597
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "addFriend"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$5;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;Lcom/facebook/katana/activity/BaseFacebookActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 640
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "showAlert"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowAlertHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 643
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "openInNewWebView"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$OpenInNewWebViewHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$OpenInNewWebViewHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 646
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "hideSoftKeyboard"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$HideSoftKeyboardHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$HideSoftKeyboardHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 648
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "didPostSuccess"

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$6;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/activity/BaseFacebookActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 660
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const-string v1, "nativethirdparty"

    new-instance v2, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;

    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/facebook/katana/activity/apps/LaunchApplicationHandler;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$NativeCallHandler;)V

    .line 663
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->j()V

    .line 664
    return-void

    .line 496
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    .line 497
    invoke-virtual {p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/NavBarHost;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/katana/activity/NavBarHost;->a(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aa:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;[Lorg/json/JSONObject;)[Lorg/json/JSONObject;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    return-wide p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->W:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->O:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Z:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)[Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->am:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ah:Z

    return p1
.end method

.method static synthetic e(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->T:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    return-wide v0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->O:Z

    return v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/util/logging/InteractionLogger;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ai:Lcom/facebook/katana/util/logging/InteractionLogger;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->L:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Z:Z

    return v0
.end method

.method static synthetic l(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/TabProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ag:Lcom/facebook/katana/TabProgressListener;

    return-object v0
.end method

.method static synthetic m(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    return v0
.end method

.method static synthetic n(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ad:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->f()V

    .line 733
    :cond_0
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 879
    invoke-super/range {p0 .. p3}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(IILandroid/content/Intent;)V

    .line 880
    if-nez p2, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v4

    .line 885
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 946
    :sswitch_0
    const-string v3, "extra_status_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 948
    const-string v3, "extra_tagged_ids"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 950
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 951
    array-length v6, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_5

    aget-wide v9, v8, v3

    .line 952
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 887
    :sswitch_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 888
    const-string v3, "event_name_extra"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 889
    const-string v5, "event_description_extra"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 891
    const-string v6, "event_granularity_extra"

    const/4 v7, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 893
    const-string v7, "event_timestamp_extra"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 895
    const-string v9, "event_place_id_extra"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 897
    const-string v11, "event_tagged_ids_extra"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v11

    .line 900
    :try_start_0
    const-string v12, "action"

    const-string v13, "didPostPlanEdit"

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string v12, "name"

    invoke-virtual {v4, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    const-string v3, "timestamp"

    invoke-virtual {v4, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 903
    const-string v3, "time_granularity"

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 905
    const-wide/16 v6, -0x1

    cmp-long v3, v9, v6

    if-eqz v3, :cond_2

    .line 906
    const-string v3, "location_id"

    invoke-virtual {v4, v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 908
    :cond_2
    invoke-static {v5}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 909
    const-string v3, "description"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    :cond_3
    if-eqz v11, :cond_4

    .line 912
    const-string v3, "invited_users"

    new-instance v5, Lorg/json/JSONArray;

    invoke-static {v11}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_4
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    new-instance v6, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto/16 :goto_0

    .line 916
    :catch_0
    move-exception v3

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inconceivable exception"

    invoke-static {v5, v6, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 928
    :sswitch_2
    const-string v3, "extra_comment_text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 930
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 931
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 933
    :try_start_1
    const-string v5, "text"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    const-string v3, "post_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->W:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 938
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 939
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    new-instance v6, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto/16 :goto_0

    .line 935
    :catch_1
    move-exception v3

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inconceivable exception"

    invoke-static {v5, v6, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 954
    :cond_5
    const-string v3, "extra_tagged_place_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 956
    const-string v5, "extra_xed_location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 958
    const-string v5, "extra_place"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/model/FacebookPlace;

    .line 960
    const-string v6, "extra_is_checkin"

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 962
    const-string v6, "extra_tagged_location"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 964
    const-string v9, "extra_is_new_plan"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 966
    const-string v9, "extra_plan_time_granularity"

    const/4 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 969
    const-string v9, "extra_status_privacy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 971
    const-string v14, "extra_status_target_id"

    const-wide/16 v15, -0x1

    move-object/from16 v0, p3

    move-wide v1, v15

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 973
    if-eqz v5, :cond_6

    iget-wide v15, v5, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 974
    :cond_6
    const-string v15, "extra_plan_timestamp"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 975
    const-string v16, "is_uploading_media"

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 978
    if-eqz v16, :cond_7

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 986
    const-string v3, "FacewebError"

    const-string v4, "Photo callback not set."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 991
    :cond_7
    if-eqz v11, :cond_9

    .line 992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 994
    const-string v3, "FacewebError"

    const-string v10, "Checkin callback not set."

    const/4 v11, 0x1

    invoke-static {v3, v10, v11}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 998
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v8}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v8

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Landroid/location/Location;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ad:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1001
    :catch_2
    move-exception v3

    const v3, 0x7f0b03df

    invoke-static {v4, v3}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1007
    :cond_9
    const-string v5, "extra_composer_setting"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/facebook/katana/activity/BaseFacebookActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1009
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1010
    const-string v5, "extra_last_status_update"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1013
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1015
    :try_start_3
    const-string v6, "action"

    if-eqz v12, :cond_f

    const-string v4, "didPostPlan"

    :goto_4
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1016
    const-string v4, "text"

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    const-string v4, "users_with"

    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v8}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1021
    if-eqz v3, :cond_a

    .line 1022
    const-string v4, "at"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    :cond_a
    if-eqz v9, :cond_b

    .line 1025
    const-string v3, "privacy"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    :cond_b
    if-eqz v10, :cond_c

    .line 1028
    const-string v3, "disable_location"

    invoke-virtual {v5, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    :cond_c
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_d

    .line 1031
    const-string v3, "target"

    invoke-virtual {v5, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    :cond_d
    if-eqz v12, :cond_e

    .line 1034
    const-string v3, "granularity"

    invoke-virtual {v5, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1035
    const-string v3, "timestamp"

    invoke-virtual {v5, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1040
    :cond_e
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1044
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    new-instance v6, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShareHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/facebook/katana/webview/FacewebWebView;->a(Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    goto/16 :goto_0

    .line 1015
    :cond_f
    :try_start_4
    const-string v4, "didPostStatus"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 1037
    :catch_3
    move-exception v3

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v4

    const-string v6, "inconceivable exception"

    invoke-static {v4, v6, v3}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1049
    :cond_10
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(I)V

    .line 1050
    const-string v3, "FacewebError"

    const-string v4, "Status callback unset."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1056
    :sswitch_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 885
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2536
    const/4 v1, 0x0

    iget-wide v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    .line 2537
    return-void
.end method

.method protected final a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 2542
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    .line 2543
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->L:Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ag:Lcom/facebook/katana/TabProgressListener;

    .line 760
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ag:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ag:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ah:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 764
    :cond_0
    return-void
.end method

.method protected final a(Lcom/facebook/katana/activity/BaseFacebookActivity;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->O:Z

    .line 1063
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->P:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V

    .line 1064
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 4
    .parameter

    .prologue
    .line 2710
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2722
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 2723
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2724
    add-int/lit16 v1, v0, 0x7d0

    .line 2725
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 2726
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    aget-object v2, v2, v0

    const-string v3, "callback"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 2723
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2712
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->b()V

    goto :goto_0

    .line 2717
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Faceweb href: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Faceweb href: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2730
    :cond_1
    return-void

    .line 2710
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K()V

    .line 771
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->destroy()V

    .line 776
    :cond_0
    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->U:Lcom/facebook/katana/webview/RefreshableFacewebWebViewContainer;

    .line 777
    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    .line 778
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2661
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2662
    if-nez v0, :cond_0

    .line 2663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2666
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/content/Intent;)V

    .line 2667
    return-void
.end method

.method public final c()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 1

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v2

    .line 293
    invoke-static {v2, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    .line 294
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ai:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    const-string v0, "PROFILE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    .line 298
    const-string v0, "publisher_callback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    .line 299
    const-string v0, "native_event_listener_keys"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    const-string v0, "native_event_listener_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 303
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 305
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->am:Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->L:Landroid/content/Intent;

    const-string v3, "mobile_page"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 314
    const-string v0, "/home.php"

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->af:Ljava/lang/String;

    .line 318
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "save_active_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->f()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->L:Landroid/content/Intent;

    const-string v3, "faceweb_modal"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {v2, v1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->c(Z)V

    .line 324
    const/16 v0, 0x8

    iput v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->M:I

    .line 327
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/katana/activity/BaseFacebookActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ae:Z

    .line 331
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->Y:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FeedFilterPickerHandler;

    .line 332
    iput-boolean v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aa:Z

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ac:Ljava/util/List;

    .line 335
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ac:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$FacewebAppSessionListener;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    .line 339
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    const v2, 0x88b8

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->a(Landroid/os/Handler;Lcom/facebook/katana/activity/faceweb/FacewebAssassin$AssassinFilter;I)Lcom/facebook/katana/activity/faceweb/FacewebAssassin;

    .line 351
    return-void

    :cond_4
    move v0, v1

    .line 327
    goto :goto_1
.end method

.method public final d(I)Landroid/support/v4/app/DialogFragment;
    .locals 3
    .parameter

    .prologue
    .line 810
    packed-switch p1, :pswitch_data_0

    .line 834
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->d(I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 812
    :pswitch_0
    const v0, 0x7f0b0359

    invoke-static {v0}, Lcom/facebook/katana/fragment/dialog/AlertDialogFragment;->d(I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 818
    :pswitch_1
    const/4 v0, -0x1

    .line 820
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 821
    const v0, 0x7f0b035a

    .line 830
    :cond_0
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/fragment/dialog/ProgressDialogFragment;->a(IZZ)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    goto :goto_0

    .line 823
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 824
    const v0, 0x7f0b0345

    goto :goto_1

    .line 826
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 827
    const v0, 0x7f0b024e

    goto :goto_1

    .line 810
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->d(Landroid/os/Bundle;)V

    .line 739
    const-string v0, "PROFILE_ID"

    iget-wide v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->V:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 740
    const-string v0, "save_active_state"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->am:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    :cond_0
    const-string v0, "native_event_listener_keys"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 748
    const-string v0, "native_event_listener_values"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 749
    const-string v0, "publisher_callback"

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->X:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 2673
    return-void
.end method

.method public final g()V
    .locals 6

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    .line 2678
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v2

    .line 2680
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aa:Z

    if-eqz v0, :cond_0

    .line 2681
    const v0, 0x7f0b035b

    const v3, 0x7f020229

    invoke-virtual {v2, v4, v0, v3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(III)V

    .line 2683
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ah:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v4, v0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->b(IZ)V

    .line 2686
    :cond_0
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2687
    const/16 v0, 0x65

    const-string v3, "Faceweb!"

    const v4, 0x7f020135

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(ILjava/lang/String;I)V

    .line 2692
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 2693
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 2694
    add-int/lit16 v0, v1, 0x7d0

    .line 2695
    iget-object v3, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->aj:[Lorg/json/JSONObject;

    aget-object v3, v3, v1

    .line 2696
    const-string v4, "icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2697
    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(ILjava/lang/String;I)V

    .line 2693
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2683
    goto :goto_0

    .line 2700
    :cond_3
    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02022c

    invoke-virtual {v2, v0, v3, v4}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(ILjava/lang/String;I)V

    goto :goto_2

    .line 2705
    :cond_4
    return-void
.end method

.method public final g_()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K()V

    .line 697
    invoke-super {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->g_()V

    .line 698
    return-void
.end method

.method public final u()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 356
    invoke-super {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->u()V

    .line 358
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v0

    .line 359
    invoke-static {v0, v5}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 362
    instance-of v1, v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    .line 366
    invoke-virtual {v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->j()V

    .line 401
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v1, "fragment"

    const-string v2, "parent of FwCF not a FbFCA"

    invoke-static {v1, v2, v5}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 369
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    .line 377
    sget-object v1, Lcom/facebook/katana/service/method/PerfLogging$Step;->ONRESUME:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->n()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/PerfLogging;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/PerfLogging$Step;Ljava/lang/String;J)V

    .line 379
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 380
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_1

    .line 382
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J()V

    .line 383
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->I()V

    .line 384
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->i()V

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->onResume()V

    .line 390
    :cond_3
    iget-wide v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 392
    const-string v2, "(function() { if (window.fwDidEnterForeground) { fwDidEnterForeground(%d, %s); } })()"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "true"

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/webview/FacewebWebView;->b(Ljava/lang/String;Lcom/facebook/katana/webview/FacebookWebView$JsReturnHandler;)V

    .line 396
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->al:Z

    if-eqz v0, :cond_5

    .line 397
    iput-boolean v6, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->al:Z

    goto :goto_0

    .line 399
    :cond_5
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->e()V

    goto :goto_0
.end method

.method public final v()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 671
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ab:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->ak:J

    .line 676
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_2

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->onPause()V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->freeMemory()V

    .line 683
    :cond_2
    invoke-static {p0}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    .line 685
    invoke-super {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->v()V

    .line 686
    return-void
.end method

.method public final w()V
    .locals 5

    .prologue
    .line 705
    invoke-static {p0}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V

    .line 707
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    .line 711
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$7;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Lcom/facebook/katana/webview/FacewebWebView;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    .line 721
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->K()V

    .line 724
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->w()V

    .line 725
    return-void
.end method
