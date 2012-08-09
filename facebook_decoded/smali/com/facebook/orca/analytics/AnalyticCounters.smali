.class public final Lcom/facebook/orca/analytics/AnalyticCounters;
.super Ljava/lang/Object;
.source "AnalyticCounters.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 56
    return-void
.end method

.method public final a(Lcom/facebook/orca/analytics/HoneyClientEvent;)V
    .locals 6
    .parameter

    .prologue
    .line 62
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/node/ObjectNode;->x()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    const-string v0, "analytic_counters"

    invoke-virtual {p1, v0, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 70
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 34
    if-nez v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 36
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 41
    :goto_0
    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/facebook/orca/analytics/AnalyticCounters;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
