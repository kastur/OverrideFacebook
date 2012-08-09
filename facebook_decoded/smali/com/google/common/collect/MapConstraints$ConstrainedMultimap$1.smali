.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;
.super Lcom/google/common/collect/ForwardingMap;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 440
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 440
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->c:Ljava/util/Map;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->a:Ljava/util/Set;

    .line 429
    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->d:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v1, v1, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->a:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->a:Ljava/util/Set;

    .line 433
    :cond_0
    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->b:Ljava/util/Collection;

    .line 448
    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapValues;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;->b:Ljava/util/Collection;

    .line 452
    :cond_0
    return-object v0
.end method
