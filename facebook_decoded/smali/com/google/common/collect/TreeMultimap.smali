.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "TreeMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private l()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method private m()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->k()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultimap;->m()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->k()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->d()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic e()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->e()V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultimap;->l()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->f(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->g()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic j()Ljava/util/Set;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->j()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/TreeSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
