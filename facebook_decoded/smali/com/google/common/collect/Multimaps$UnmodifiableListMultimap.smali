.class Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$UnmodifiableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private e()Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->a()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->e()Lcom/google/common/collect/ListMultimap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->e()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableListMultimap;->e()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
