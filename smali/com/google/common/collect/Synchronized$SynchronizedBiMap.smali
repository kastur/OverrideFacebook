.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private d()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method


# virtual methods
.method final synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public final m_()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1101
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->d()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->m_()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->b:Ljava/util/Set;

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->b:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->m_()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
