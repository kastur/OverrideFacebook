.class final Lcom/google/common/collect/Lists$2;
.super Lcom/google/common/collect/Lists$AbstractListWrapper;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Lists$AbstractListWrapper",
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
    .line 971
    iget-object v0, p0, Lcom/google/common/collect/Lists$2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
