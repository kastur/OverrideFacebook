.class public Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;
.super Ljava/lang/Object;
.source "AnalyticsDeviceUtils.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcom/facebook/orca/net/OrcaNetworkManager;

.field private final e:Lcom/facebook/orca/analytics/AnalyticCounters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticCounters;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b:Landroid/telephony/TelephonyManager;

    .line 32
    iput-object p3, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    .line 33
    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    .line 34
    iput-object p5, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    .line 35
    return-void
.end method

.method private a()D
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v0, 0x0

    .line 114
    .line 119
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 121
    const-string v3, "level"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 122
    const-string v4, "scale"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v4, v2

    .line 123
    if-ltz v3, :cond_0

    cmpl-double v2, v4, v0

    if-lez v2, :cond_0

    .line 124
    int-to-double v0, v3

    div-double/2addr v0, v4

    .line 127
    :cond_0
    return-wide v0
.end method

.method private static a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "device_info"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 45
    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 48
    const-string v2, "device_type"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 49
    const-string v2, "os_type"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 50
    const-string v2, "os_ver"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 51
    const-string v2, "density"

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 52
    const-string v2, "screen_width"

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 53
    const-string v2, "screen_height"

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 54
    const-string v1, "front_camera"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 56
    const-string v1, "rear_camera"

    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->c:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 58
    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 60
    return-object v0
.end method

.method public final a(Lcom/facebook/orca/analytics/HoneyClientEvent;JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0x100000

    .line 69
    invoke-virtual {p1, p2, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(J)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 70
    invoke-virtual {p1, p4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;

    .line 71
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->d:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "conn"

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 74
    const-string v0, "locale"

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 77
    const-string v0, "battery"

    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    .line 86
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 87
    sub-long v3, v1, v3

    .line 89
    const-string v5, "free_mem"

    div-long/2addr v3, v7

    invoke-virtual {p1, v5, v3, v4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 90
    const-string v3, "total_mem"

    div-long/2addr v1, v7

    invoke-virtual {p1, v3, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 91
    const-string v1, "core_count"

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 98
    return-object p1

    .line 73
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 132
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 139
    const-string v1, "process_id"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 145
    const-string v1, "total_bytes_received"

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;J)V

    .line 148
    const-string v1, "total_bytes_sent"

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;J)V

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 153
    const-string v1, "total_packets_received"

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxPackets(I)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;J)V

    .line 156
    const-string v1, "total_packets_sent"

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxPackets(I)J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;Ljava/lang/String;J)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->e:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V

    .line 163
    return-void
.end method

.method public final b(JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "device_status"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;->a(Lcom/facebook/orca/analytics/HoneyClientEvent;JLjava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 108
    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 110
    return-object v0
.end method
