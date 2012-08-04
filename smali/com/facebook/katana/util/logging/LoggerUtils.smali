.class public final Lcom/facebook/katana/util/logging/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticsLogger;
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    .line 41
    instance-of v0, p0, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 42
    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;->l()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    return-object v0

    .line 43
    :cond_1
    instance-of v0, p0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 44
    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsActivity;

    invoke-interface {v0}, Lcom/facebook/orca/analytics/AnalyticsActivity;->f_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticCounters;
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticCounters;

    return-object v0
.end method
