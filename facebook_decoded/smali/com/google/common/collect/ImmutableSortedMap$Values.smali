.class Lcom/google/common/collect/ImmutableSortedMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->a:Lcom/google/common/collect/ImmutableSortedMap;

    .line 570
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->e()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Values;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method
