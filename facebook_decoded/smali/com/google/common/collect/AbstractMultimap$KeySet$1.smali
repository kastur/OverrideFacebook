.class Lcom/google/common/collect/AbstractMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
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

.field private b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private synthetic c:Lcom/google/common/collect/AbstractMultimap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$KeySet;)V
    .locals 1
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->c:Lcom/google/common/collect/AbstractMultimap$KeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->c:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$KeySet;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->b:Ljava/util/Map$Entry;

    .line 903
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 908
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 909
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 910
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$KeySet$1;->c:Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$KeySet;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->b(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 911
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 912
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
