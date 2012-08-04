.class Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaAnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;
    .locals 9

    .prologue
    .line 52
    new-instance v0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

    const-class v1, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/config/OrcaConfig;

    const-class v2, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/app/OrcaAppType;

    const-class v3, Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/analytics/AnalyticsStorage;

    const-class v4, Landroid/telephony/TelephonyManager;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-class v5, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    const-class v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    const-class v7, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    const-class v8, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;-><init>(Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/analytics/AnalyticsStorage;Landroid/telephony/TelephonyManager;Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;Lcom/facebook/orca/net/OrcaNetworkManager;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;->b()Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

    move-result-object v0

    return-object v0
.end method
