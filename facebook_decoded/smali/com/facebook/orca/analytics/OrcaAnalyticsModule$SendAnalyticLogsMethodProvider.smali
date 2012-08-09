.class Lcom/facebook/orca/analytics/OrcaAnalyticsModule$SendAnalyticLogsMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaAnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$SendAnalyticLogsMethodProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$SendAnalyticLogsMethodProvider;->b()Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    move-result-object v0

    return-object v0
.end method
