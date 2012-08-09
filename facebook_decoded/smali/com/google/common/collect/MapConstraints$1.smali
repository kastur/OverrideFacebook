.class final Lcom/google/common/collect/MapConstraints$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Map$Entry;

.field private synthetic b:Lcom/google/common/collect/MapConstraint;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$1;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$1;->b:Lcom/google/common/collect/MapConstraint;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->b:Lcom/google/common/collect/MapConstraint;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$1;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
