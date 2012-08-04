.class Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;
    .locals 2

    .prologue
    .line 77
    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-direct {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;-><init>(Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;->b()Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    move-result-object v0

    return-object v0
.end method
