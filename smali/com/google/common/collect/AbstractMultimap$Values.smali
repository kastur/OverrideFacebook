.class Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->e()V

    .line 1203
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractMultimap;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$ValueIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->a:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$ValueIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->d(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
