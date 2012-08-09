.class Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaAnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/analytics/OrcaAnalyticsModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->a:Lcom/facebook/orca/analytics/OrcaAnalyticsModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;
    .locals 3

    .prologue
    .line 78
    new-instance v2, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    iget-object v0, p0, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->a:Lcom/facebook/orca/analytics/OrcaAnalyticsModule;

    invoke-static {v0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)Landroid/content/Context;

    const-class v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v1, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/analytics/AnalyticsConfig;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;->b()Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    move-result-object v0

    return-object v0
.end method
