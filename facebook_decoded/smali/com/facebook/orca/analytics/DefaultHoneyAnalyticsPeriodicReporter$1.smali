.class Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "DefaultHoneyAnalyticsPeriodicReporter.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p2, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 38
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 33
    return-void
.end method
