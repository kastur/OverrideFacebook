.class Lcom/google/common/collect/LinkedListMultimap$5;
.super Ljava/util/AbstractMap;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
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

.field private synthetic b:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
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
    .line 930
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 931
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
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
    .line 935
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->b:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
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
    .line 915
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->a:Ljava/util/Set;

    .line 916
    if-nez v0, :cond_0

    .line 917
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->b:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/LinkedListMultimap;B)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->a:Ljava/util/Set;

    .line 919
    :cond_0
    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
