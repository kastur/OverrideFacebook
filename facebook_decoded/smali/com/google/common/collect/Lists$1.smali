.class final Lcom/google/common/collect/Lists$1;
.super Lcom/google/common/collect/Lists$RandomAccessListWrapper;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Lists$RandomAccessListWrapper",
        "<TE;>;"
    }
.end annotation


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/google/common/collect/Lists$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
