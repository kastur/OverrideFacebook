.class Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;
.super Lcom/facebook/orca/analytics/HoneyClientEvent;
.source "HoneyPerformanceEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    const-string v0, "perf"

    const-string v1, "BACKGROUND_AUTO_SET"

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 25
    invoke-static {p2}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 28
    invoke-static {p3}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 29
    const-string v0, "marker"

    invoke-virtual {p0, v0, p3}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "value"

    invoke-virtual {p0, v0, p4, p5}, Lcom/facebook/katana/util/logging/HoneyPerformanceEvent;->a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 34
    :cond_0
    return-void
.end method
