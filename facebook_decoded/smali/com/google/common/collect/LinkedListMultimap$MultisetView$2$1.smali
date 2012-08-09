.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

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
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

.field private synthetic b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->a:Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 734
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 748
    return-void
.end method
