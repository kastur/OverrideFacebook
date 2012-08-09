.class Lcom/google/common/collect/Synchronized$SynchronizedAsMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private transient b:Ljava/util/Set;
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

.field private transient c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1134
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1135
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
    .line 1138
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1140
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
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
    .line 1146
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->b:Ljava/util/Set;

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->b:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
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
    .line 1156
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->a:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->c:Ljava/util/Collection;

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;->c:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
