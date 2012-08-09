.class Lcom/google/common/collect/MapConstraints$ConstrainedEntries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b:Ljava/util/Collection;

    .line 575
    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->a:Lcom/google/common/collect/MapConstraint;

    .line 576
    return-void
.end method


# virtual methods
.method protected final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b:Ljava/util/Collection;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    new-instance v1, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->f()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
