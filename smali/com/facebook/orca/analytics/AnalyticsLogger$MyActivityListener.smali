.class public Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "AnalyticsLogger.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 2
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 415
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->b:Landroid/content/BroadcastReceiver;

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->c:Landroid/content/IntentFilter;

    .line 429
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->c:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter

    .prologue
    .line 433
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 435
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    invoke-static {p1}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 446
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Z)Z

    .line 448
    invoke-static {p1}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->c:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 459
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-object v0, p1

    check-cast v0, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 460
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 461
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    check-cast p1, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 441
    return-void
.end method

.method public final g(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    check-cast p1, Lcom/facebook/orca/activity/FbActivityish;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d(Lcom/facebook/orca/analytics/AnalyticsLogger;Lcom/facebook/orca/activity/FbActivityish;)V

    .line 466
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->b(Lcom/facebook/orca/analytics/AnalyticsLogger;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c(Lcom/facebook/orca/analytics/AnalyticsLogger;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;I)V

    .line 475
    :cond_0
    return-void
.end method
