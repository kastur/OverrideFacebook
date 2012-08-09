.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;
.super Ljava/util/AbstractSet;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap$MultisetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    .line 726
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->j_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
