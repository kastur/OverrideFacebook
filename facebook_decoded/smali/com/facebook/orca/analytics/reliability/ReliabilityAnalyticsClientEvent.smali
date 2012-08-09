.class public Lcom/facebook/orca/analytics/reliability/ReliabilityAnalyticsClientEvent;
.super Ljava/lang/Object;
.source "ReliabilityAnalyticsClientEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/orca/analytics/HoneyClientEvent;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Lcom/facebook/orca/analytics/HoneyClientEvent;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "status"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 33
    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {v2, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 36
    :cond_0
    if-eqz p4, :cond_1

    .line 37
    invoke-virtual {v2, p4}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    goto :goto_0

    .line 46
    :cond_2
    return-object v2
.end method
