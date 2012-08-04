.class Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


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
.field private synthetic a:Lcom/google/common/collect/AbstractMultimap$MultisetView;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1047
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->e()V

    .line 1068
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1058
    instance-of v0, p1, Lcom/google/common/collect/Multiset$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 1063
    :goto_0
    return v0

    .line 1061
    :cond_0
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 1062
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1063
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

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
    .line 1049
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Lcom/google/common/collect/AbstractMultimap;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;->a:Lcom/google/common/collect/AbstractMultimap$MultisetView;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->a:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->a(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
