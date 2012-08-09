.class public Lcom/facebook/orca/images/ImageCacheCleanupService;
.super Landroid/app/IntentService;
.source "ImageCacheCleanupService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "orca:ImageCacheCleanupService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/images/ImageCacheCleanupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 33
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 35
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    sget-wide v7, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v4, v7

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ImageCache;->a()V

    .line 28
    return-void
.end method
