.class Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;

.field private synthetic b:Lcom/google/common/collect/MapConstraints$ConstrainedEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->b:Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->b:Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

    iget-object v1, v1, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;->a:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->a(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()Ljava/util/Iterator;
    .locals 1
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
    .line 588
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
