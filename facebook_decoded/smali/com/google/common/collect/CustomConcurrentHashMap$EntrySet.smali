.class final Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 0
    .parameter

    .prologue
    .line 3647
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->clear()V

    .line 3687
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3654
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3664
    :cond_0
    :goto_0
    return v0

    .line 3657
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3658
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3659
    if-eqz v1, :cond_0

    .line 3662
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3664
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->d:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3650
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$EntryIterator;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3668
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3673
    :cond_0
    :goto_0
    return v0

    .line 3671
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3672
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3673
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$EntrySet;->a:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
