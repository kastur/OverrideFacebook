.class final Lcom/facebook/katana/util/logging/PerformanceLogger;
.super Ljava/lang/Object;
.source "PerformanceLogger.java"


# static fields
.field private static a:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/util/logging/PerformanceLogger;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticsLogger;
    .locals 2
    .parameter

    .prologue
    .line 28
    const-class v1, Lcom/facebook/katana/util/logging/PerformanceLogger;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/katana/util/logging/PerformanceLogger;->b:Z

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/LoggerUtils;->a(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/logging/PerformanceLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/util/logging/PerformanceLogger;->b:Z

    .line 32
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/logging/PerformanceLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/facebook/katana/util/logging/PerformanceLogger;->a(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 24
    :cond_0
    return-void
.end method
