.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticCounters;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/analytics/AnalyticCounters;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-direct {v0}, Lcom/facebook/orca/analytics/AnalyticCounters;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;->b()Lcom/facebook/orca/analytics/AnalyticCounters;

    move-result-object v0

    return-object v0
.end method
