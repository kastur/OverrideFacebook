.class Lcom/google/common/collect/ImmutableMultimap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultimap",
            "<*TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->c()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 583
    new-instance v1, Lcom/google/common/collect/ImmutableMultimap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Values$1;-><init>(Lcom/google/common/collect/ImmutableMultimap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Values;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Values;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->d()I

    move-result v0

    return v0
.end method
