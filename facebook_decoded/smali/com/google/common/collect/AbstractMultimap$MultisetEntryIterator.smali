.class Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1126
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->a:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method

.method private a()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1135
    new-instance v1, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->b:Lcom/google/common/collect/AbstractMultimap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/AbstractMultimap$MultisetEntry;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map$Entry;)V

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetEntryIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1140
    return-void
.end method