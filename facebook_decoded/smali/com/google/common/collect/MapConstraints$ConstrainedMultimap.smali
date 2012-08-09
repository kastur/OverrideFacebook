.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;
.super Lcom/google/common/collect/ForwardingMultimap;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected final a()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b:Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->a:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 2
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
    .line 415
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->c:Ljava/util/Map;

    .line 416
    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->b:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->b()Ljava/util/Map;

    move-result-object v1

    .line 419
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->c:Ljava/util/Map;

    .line 460
    :cond_0
    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->a()Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method
