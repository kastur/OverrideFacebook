.class final Lcom/google/common/collect/CustomConcurrentHashMap$2;
.super Ljava/util/AbstractQueue;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<**>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 827
    invoke-static {}, Lcom/google/common/collect/Iterators;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 804
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method
