.class public Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;
.super Ljava/util/AbstractMap;
.source "MapWithSecondaryOrdering.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a:Ljava/util/Comparator;

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->d:Ljava/util/Map;

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->e:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->e:Ljava/util/List;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a:Ljava/util/Comparator;

    invoke-static {v0, p2, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 55
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->a:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 86
    if-gez v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The collection is in an invalid state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 91
    if-ne v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_2
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
