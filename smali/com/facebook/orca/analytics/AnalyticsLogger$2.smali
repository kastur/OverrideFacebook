.class Lcom/facebook/orca/analytics/AnalyticsLogger$2;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-wide p2, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:J

    iput-object p4, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    iget-wide v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->a:J

    iget-object v3, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;JLjava/lang/String;)V

    .line 258
    return-void
.end method
