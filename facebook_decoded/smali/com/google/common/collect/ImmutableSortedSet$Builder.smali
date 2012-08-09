.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private b()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 647
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 648
    return-object p0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 622
    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->b()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .parameter

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method
