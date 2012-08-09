.class public final Lcom/facebook/katana/util/logging/DataLogger;
.super Ljava/lang/Object;
.source "DataLogger.java"


# static fields
.field private static a:Lcom/facebook/orca/analytics/AnalyticCounters;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/katana/util/logging/LoggerUtils;->b(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticCounters;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/facebook/katana/util/logging/DataLogger;->a:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticCounters;->a()V

    .line 28
    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static a(Lcom/facebook/apache/http/client/methods/HttpRequestBase;)V
    .locals 4
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0}, Lcom/facebook/katana/util/logging/DataLogUtils;->a(Lcom/facebook/apache/http/client/methods/HttpRequestBase;)J

    move-result-wide v1

    .line 39
    sget-object v3, Lcom/facebook/katana/util/logging/DataLogger;->a:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Ljava/lang/String;J)V

    .line 40
    return-void
.end method

.method public static a(Ljava/net/URI;Lcom/facebook/apache/http/HttpResponse;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/facebook/katana/util/logging/DataLogUtils;->b(Lcom/facebook/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/facebook/katana/util/logging/DataLogUtils;->a(Lcom/facebook/apache/http/HttpResponse;)J

    move-result-wide v1

    .line 51
    invoke-static {p0, v0}, Lcom/facebook/katana/util/logging/DataCounterNames;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v3, Lcom/facebook/katana/util/logging/DataLogger;->a:Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {v3, v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticCounters;->a(Ljava/lang/String;J)V

    .line 53
    return-void
.end method
