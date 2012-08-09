.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;
.super Lcom/google/common/collect/ForwardingIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

.field private synthetic b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->a:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .locals 2
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
    .line 831
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 832
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V

    return-object v1
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
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
