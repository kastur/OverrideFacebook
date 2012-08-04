.class Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsLogger.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;->a:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;->a:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-static {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a(Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener$1;->a:Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    iget-object v1, v1, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-static {v1, v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/AnalyticsLogger;Landroid/net/NetworkInfo;)V

    .line 425
    :cond_1
    return-void
.end method
