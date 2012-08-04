.class Lcom/google/common/collect/SortedMaps$SortedMapDifferenceImpl;
.super Lcom/google/common/collect/Maps$MapDifferenceImpl;
.source "SortedMaps.java"

# interfaces
.implements Lcom/google/common/collect/SortedMapDifference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$MapDifferenceImpl",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedMapDifference",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private e()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->d()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private f()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->c()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private g()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private h()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$SortedMapDifferenceImpl;->g()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$SortedMapDifferenceImpl;->h()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$SortedMapDifferenceImpl;->f()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/google/common/collect/SortedMaps$SortedMapDifferenceImpl;->e()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
