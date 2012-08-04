.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 1439
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1440
    check-cast p1, Ljava/util/Map$Entry;

    .line 1441
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;->a:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1448
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1449
    check-cast p1, Ljava/util/Map$Entry;

    .line 1450
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$TransformedEntries;->a:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 1451
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
