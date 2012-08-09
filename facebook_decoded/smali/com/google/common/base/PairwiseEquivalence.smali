.class final Lcom/google/common/base/PairwiseEquivalence;
.super Ljava/lang/Object;
.source "PairwiseEquivalence.java"

# interfaces
.implements Lcom/google/common/base/Equivalence;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Equivalence",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final elementEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<-TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 70
    instance-of v0, p1, Lcom/google/common/base/PairwiseEquivalence;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/google/common/base/PairwiseEquivalence;

    .line 72
    iget-object v0, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p1, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-nez p1, :cond_2

    .line 38
    if-nez p2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    .line 40
    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    iget-object v4, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 48
    goto :goto_0

    .line 52
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/PairwiseEquivalence;->equivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public final hash(Ljava/lang/Iterable;)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 65
    :cond_0
    return v0

    .line 61
    :cond_1
    const v0, 0x13381

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    mul-int/lit16 v0, v0, 0x616f

    iget-object v3, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, v2}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final bridge synthetic hash(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/common/base/PairwiseEquivalence;->hash(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x46a3eb07

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Equivalences.pairwise("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
