.class Lcom/google/common/collect/AbstractBiMap$Inverse;
.super Lcom/google/common/collect/AbstractBiMap;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractBiMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/AbstractBiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;B)V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap$Inverse;-><init>(Ljava/util/Map;Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->m_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
