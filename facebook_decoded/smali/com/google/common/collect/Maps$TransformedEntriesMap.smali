.class Lcom/google/common/collect/Maps$TransformedEntriesMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV1;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$TransformedEntriesMap",
            "<TK;TV1;TV2;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 869
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    .line 870
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    .line 871
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 900
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->c:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

    .line 906
    if-nez v0, :cond_0

    .line 907
    new-instance v0, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;-><init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->c:Lcom/google/common/collect/Maps$TransformedEntriesMap$EntrySet;

    .line 909
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 885
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Maps$EntryTransformer;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Maps$EntryTransformer;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
