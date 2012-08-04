.class Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsConfig;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider$1;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;->b()Lcom/facebook/orca/analytics/AnalyticsConfig;

    move-result-object v0

    return-object v0
.end method
