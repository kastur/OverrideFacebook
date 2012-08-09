.class Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;
.source "MapConstraints.java"

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
        "Lcom/google/common/collect/MapConstraints$ConstrainedMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
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
    .line 711
    invoke-super {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
