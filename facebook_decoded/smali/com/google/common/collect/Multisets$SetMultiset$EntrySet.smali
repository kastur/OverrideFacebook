.class Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;
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
.field final synthetic a:Lcom/google/common/collect/Multisets$SetMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 307
    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
