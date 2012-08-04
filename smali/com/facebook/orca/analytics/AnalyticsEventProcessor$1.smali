.class Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;
.super Ljava/lang/Object;
.source "AnalyticsEventProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;->a:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor$1;->a:Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-static {v0}, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;->a(Lcom/facebook/orca/analytics/AnalyticsEventProcessor;)V

    .line 90
    return-void
.end method
