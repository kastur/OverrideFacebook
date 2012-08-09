.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    .line 1178
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1182
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1183
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method
