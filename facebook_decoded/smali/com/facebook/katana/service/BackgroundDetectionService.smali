.class public Lcom/facebook/katana/service/BackgroundDetectionService;
.super Landroid/app/Service;
.source "BackgroundDetectionService.java"


# static fields
.field private static a:Landroid/app/PendingIntent;

.field private static b:Z

.field private static c:Z

.field private static d:J

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    .line 42
    sput-boolean v2, Lcom/facebook/katana/service/BackgroundDetectionService;->c:Z

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/katana/service/BackgroundDetectionService;->d:J

    .line 46
    sput-boolean v2, Lcom/facebook/katana/service/BackgroundDetectionService;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->c:Z

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/service/BackgroundDetectionService;->d:J

    .line 113
    sget-object v0, Lcom/facebook/katana/service/BackgroundDetectionService$URI;->a:Landroid/net/Uri;

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/BackgroundDetectionService;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 114
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const-class v1, Lcom/facebook/katana/service/BackgroundDetectionService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/service/BackgroundDetectionService;->c(Landroid/content/Context;)V

    .line 83
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/BackgroundDetectionService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    .line 89
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    sget-object v5, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->c:Z

    .line 121
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/katana/service/BackgroundDetectionService;->d:J

    .line 123
    invoke-static {p0}, Lcom/facebook/katana/service/BackgroundDetectionService;->c(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/facebook/katana/service/BackgroundDetectionService;->e(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public static b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    sget-boolean v2, Lcom/facebook/katana/service/BackgroundDetectionService;->c:Z

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    sget-wide v2, Lcom/facebook/katana/service/BackgroundDetectionService;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/facebook/katana/service/BackgroundDetectionService;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 199
    goto :goto_0
.end method

.method private static c()V
    .locals 0

    .prologue
    .line 149
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->a()V

    .line 150
    return-void
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    const-class v1, Lcom/facebook/katana/service/BackgroundDetectionService;

    monitor-enter v1

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    sget-object v2, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 100
    sget-object v0, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/BackgroundDetectionService;->a:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->b:Z

    .line 135
    invoke-static {p0}, Lcom/facebook/katana/service/method/ApiLogging;->c(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->c(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/facebook/katana/util/FBLocationManager;->a()V

    .line 140
    sget-object v0, Lcom/facebook/katana/service/BackgroundDetectionService$URI;->b:Landroid/net/Uri;

    const v1, 0x83d60

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/BackgroundDetectionService;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 141
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    sget-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->b:Z

    if-eqz v0, :cond_0

    .line 158
    sput-boolean v1, Lcom/facebook/katana/service/BackgroundDetectionService;->b:Z

    .line 159
    invoke-static {p0}, Lcom/facebook/katana/service/method/ApiLogging;->b(Landroid/content/Context;)V

    .line 160
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 161
    invoke-static {p0}, Lcom/facebook/katana/service/PhotoCleanupService;->a(Landroid/content/Context;)V

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p0, v1, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 167
    :cond_0
    sget-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->e:Z

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/service/BackgroundDetectionService;->e:Z

    .line 170
    instance-of v0, p0, Lcom/facebook/katana/FacebookApplication;

    if-eqz v0, :cond_1

    .line 171
    check-cast p0, Lcom/facebook/katana/FacebookApplication;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/katana/FacebookApplication;->b()V

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "BackgroundDetectionService"

    const-string v1, "started with null intent"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    .line 55
    :cond_0
    sget-object v1, Lcom/facebook/katana/service/BackgroundDetectionService$URI;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {p0}, Lcom/facebook/katana/service/BackgroundDetectionService;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_1
    sget-object v1, Lcom/facebook/katana/service/BackgroundDetectionService$URI;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-static {}, Lcom/facebook/katana/service/BackgroundDetectionService;->c()V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "BackgroundDetectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected intent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
