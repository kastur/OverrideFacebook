.class Lcom/google/common/collect/Multisets$2$1;
.super Ljava/util/AbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$2;


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 401
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 402
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v1

    .line 403
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$2$1;->a:Lcom/google/common/collect/Multisets$2;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Multisets$2;->a(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 406
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1;->a:Lcom/google/common/collect/Multisets$2;

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$2;->j_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1;->a:Lcom/google/common/collect/Multisets$2;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$2;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->k_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/google/common/collect/Multisets$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$2$1$1;-><init>(Lcom/google/common/collect/Multisets$2$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1;->a:Lcom/google/common/collect/Multisets$2;

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$2;->j_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
