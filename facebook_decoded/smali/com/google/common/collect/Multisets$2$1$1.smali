.class Lcom/google/common/collect/Multisets$2$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;

.field private synthetic b:Lcom/google/common/collect/Multisets$2$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$2$1;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/common/collect/Multisets$2$1$1;->b:Lcom/google/common/collect/Multisets$2$1;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$2$1$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method

.method private c()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 383
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->a()Ljava/lang/Object;

    move-result-object v1

    .line 384
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$2$1$1;->b:Lcom/google/common/collect/Multisets$2$1;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$2$1;->a:Lcom/google/common/collect/Multisets$2;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$2;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multiset;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 386
    if-lez v0, :cond_0

    .line 387
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$2$1$1;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$2$1$1;->c()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
