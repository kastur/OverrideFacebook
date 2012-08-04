.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsLogger;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsLogger;
    .locals 8

    .prologue
    .line 127
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/facebook/orca/annotations/MeUserId;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/analytics/AnalyticsConfig;

    const-class v3, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    const-class v4, Landroid/os/PowerManager;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-class v5, Landroid/view/WindowManager;

    const-class v6, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    const-class v6, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/common/util/Clock;

    const-class v7, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/analytics/AnalyticsLogger;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsConfig;Lcom/facebook/orca/analytics/AnalyticsEventProcessor;Landroid/os/PowerManager;Landroid/view/WindowManager;Lcom/facebook/orca/common/util/Clock;Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;->b()Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-result-object v0

    return-object v0
.end method
