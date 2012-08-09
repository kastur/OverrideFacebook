.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/analytics/AnalyticsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;
    .locals 6

    .prologue
    .line 181
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->a:Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-static {v1}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Lcom/facebook/orca/analytics/AnalyticsModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-class v3, Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager;

    const-class v4, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/net/OrcaNetworkManager;

    const-class v5, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/analytics/AnalyticCounters;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;->b()Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    move-result-object v0

    return-object v0
.end method
