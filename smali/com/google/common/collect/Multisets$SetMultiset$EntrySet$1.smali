.class Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->b:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->b:Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;->a:Lcom/google/common/collect/Multisets$SetMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$SetMultiset;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    return-void
.end method

.method private a()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 321
    return-void
.end method
