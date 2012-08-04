.class Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;
.super Lcom/google/common/collect/MapConstraints$ConstrainedMap;
.source "MapConstraints.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapConstraints$ConstrainedMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private d()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 360
    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public final m_()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->m_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;->m_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
