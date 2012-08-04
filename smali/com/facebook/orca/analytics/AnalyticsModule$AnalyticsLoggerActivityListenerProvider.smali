.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;->b()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    move-result-object v0

    return-object v0
.end method
