.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;)V
    .locals 1
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->a:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->a:Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->b:Ljava/util/Iterator;

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
    .line 1154
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1155
    new-instance v1, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1145
    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1167
    return-void
.end method
