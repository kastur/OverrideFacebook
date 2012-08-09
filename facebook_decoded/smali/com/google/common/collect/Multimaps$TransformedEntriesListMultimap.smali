.class final Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;
.super Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "untested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap",
        "<TK;TV1;TV2;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method private b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1669
    check-cast p2, Ljava/util/List;

    new-instance v0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1658
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 1658
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
