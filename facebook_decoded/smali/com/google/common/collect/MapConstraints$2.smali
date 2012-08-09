.class final Lcom/google/common/collect/MapConstraints$2;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapConstraint;

.field private synthetic b:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$2;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$2;->a:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/google/common/collect/MapConstraints$2$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/MapConstraints$2$1;-><init>(Lcom/google/common/collect/MapConstraints$2;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$2;->b:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$2;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/common/collect/MapConstraints$2;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
