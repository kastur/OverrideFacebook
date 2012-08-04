.class Lcom/google/common/collect/Constraints$ConstrainedMultiset;
.super Lcom/google/common/collect/ForwardingMultiset;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->a:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/4 v0, 0x0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->a:Lcom/google/common/collect/Constraint;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->d()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->d()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method
