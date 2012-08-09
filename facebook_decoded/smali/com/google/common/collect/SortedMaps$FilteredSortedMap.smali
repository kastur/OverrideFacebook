.class Lcom/google/common/collect/SortedMaps$FilteredSortedMap;
.super Lcom/google/common/collect/Maps$FilteredEntryMap;
.source "SortedMaps.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$FilteredEntryMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 442
    return-void
.end method

.method private a()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v0

    .line 461
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    return-object v0

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;

    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->a()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SortedMaps$FilteredSortedMap;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
