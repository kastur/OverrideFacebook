.class Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider$1;
.super Ljava/lang/Object;
.source "AnalyticsModule.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsConfig;


# direct methods
.method constructor <init>(Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/analytics/AnalyticsConfig$Level;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/facebook/orca/analytics/AnalyticsConfig$Level;->NONE:Lcom/facebook/orca/analytics/AnalyticsConfig$Level;

    return-object v0
.end method
