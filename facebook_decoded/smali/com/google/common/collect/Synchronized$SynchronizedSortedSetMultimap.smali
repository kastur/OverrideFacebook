.class Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private f()Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 765
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->e()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedSetMultimap;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method final synthetic e()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->f()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SortedSetMultimap;->f(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
