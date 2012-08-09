.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3065
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3069
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 3070
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;->a:Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 3065
    check-cast p1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue$2;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
