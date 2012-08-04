.class Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$TransformedEntriesMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 951
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 954
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 958
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 959
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 960
    iget-object v3, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 961
    if-eqz v3, :cond_2

    .line 962
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 964
    :cond_2
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/Maps$TransformedEntriesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 921
    new-instance v1, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet$1;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    check-cast p1, Ljava/util/Map$Entry;

    .line 970
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const/4 v0, 0x1

    .line 974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;->a:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$TransformedEntriesMap;->size()I

    move-result v0

    return v0
.end method
