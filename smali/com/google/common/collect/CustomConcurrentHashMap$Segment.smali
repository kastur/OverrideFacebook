.class Lcom/google/common/collect/CustomConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# instance fields
.field volatile a:I

.field b:I

.field volatile c:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field private k:Ljava/lang/Runnable;

.field private synthetic l:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1980
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:Ljava/util/Queue;

    .line 1995
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2829
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$1;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/lang/Runnable;

    .line 2013
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:I

    .line 2014
    invoke-static {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2016
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    .line 2020
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$EvictionQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    .line 2024
    invoke-virtual {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment$ExpirationQueue;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Segment;)V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    .line 2027
    return-void

    .line 2016
    :cond_1
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    .line 2020
    :cond_2
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2024
    :cond_3
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2598
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2600
    invoke-interface {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2601
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2602
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-static {p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2603
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2601
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object p1

    goto :goto_0

    .line 2605
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2608
    :cond_1
    return-object v0
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2030
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2136
    return-void
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2048
    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2049
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2050
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2051
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2034
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2035
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:I

    if-ne v0, v1, :cond_0

    .line 2037
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2039
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2040
    return-void
.end method

.method private b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2197
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method private c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2700
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2702
    if-ne v0, p1, :cond_0

    .line 2703
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    .line 2707
    :goto_1
    return v0

    .line 2701
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2707
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e()V

    .line 2095
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2096
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:J

    .line 2101
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2102
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2104
    :cond_0
    return-void

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->f:J

    goto :goto_0
.end method

.method private e()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2121
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2122
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2124
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2125
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2128
    :cond_2
    return-void
.end method

.method private e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2733
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->f()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    .line 2734
    invoke-interface {p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2735
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2736
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2737
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2738
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 2142
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2149
    :cond_0
    return-void

    .line 2146
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method private g()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2153
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e()V

    .line 2155
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2167
    :cond_0
    return-void

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->h:Lcom/google/common/base/Ticker;

    invoke-interface {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2163
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2164
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private h()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e:I

    if-lt v0, v1, :cond_1

    .line 2180
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e()V

    .line 2182
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2183
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2184
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2186
    :cond_0
    const/4 v0, 0x1

    .line 2188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 10
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2444
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2445
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 2446
    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2464
    :cond_0
    shl-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v8

    .line 2466
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    .line 2467
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 2468
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_5

    .line 2471
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2473
    if-eqz v0, :cond_1

    .line 2474
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v2

    .line 2475
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    and-int v4, v1, v9

    .line 2478
    if-nez v2, :cond_2

    .line 2479
    invoke-virtual {v8, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2468
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 2486
    :goto_2
    if-eqz v2, :cond_3

    .line 2487
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    and-int/2addr v3, v9

    .line 2488
    if-eq v3, v4, :cond_6

    move-object v1, v2

    .line 2486
    :goto_3
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v2

    move v4, v3

    goto :goto_2

    .line 2494
    :cond_3
    invoke-virtual {v8, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    .line 2497
    :goto_4
    if-eq v2, v1, :cond_1

    .line 2498
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-static {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2499
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z

    .line 2497
    :goto_5
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 2501
    :cond_4
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v3, v0, v9

    .line 2502
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2503
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v4, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_5

    .line 2509
    :cond_5
    iput-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method private j()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2761
    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2763
    const/4 v0, 0x0

    move v3, v0

    .line 2764
    :cond_0
    :goto_0
    const/16 v0, 0x10

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2765
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v5, v1, v2

    .line 2767
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v1

    .line 2768
    :goto_1
    if-eqz v2, :cond_0

    .line 2769
    if-ne v2, v0, :cond_1

    .line 2770
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2772
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2773
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 2774
    goto :goto_0

    .line 2768
    :cond_1
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v2

    goto :goto_1

    .line 2779
    :cond_2
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2787
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c()V

    .line 2792
    :cond_0
    :goto_0
    return-void

    .line 2788
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->i()V

    .line 2849
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 2856
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2858
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V

    .line 2859
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j()V

    .line 2860
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2863
    return-void

    .line 2862
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2339
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2342
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2344
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 2346
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2347
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2351
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2352
    if-nez v1, :cond_0

    .line 2353
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    :goto_1
    return-object v0

    .line 2357
    :cond_0
    :try_start_1
    invoke-direct {p0, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2364
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    move-object v0, v1

    goto :goto_1

    .line 2345
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 2362
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    goto :goto_1

    .line 2364
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 2370
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2373
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2375
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2376
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->d:I

    if-le v1, v0, :cond_0

    .line 2377
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i()V

    .line 2378
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2382
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2383
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2384
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 2387
    :goto_0
    if-eqz v2, :cond_4

    .line 2388
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2389
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2393
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    .line 2394
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2396
    if-nez v0, :cond_2

    .line 2397
    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2403
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->c()V

    .line 2404
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()Z

    .line 2405
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v1, 0x1

    .line 2406
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    .line 2416
    :cond_1
    invoke-direct {p0, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2434
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    :goto_1
    return-object v0

    .line 2407
    :cond_2
    if-eqz p4, :cond_1

    .line 2411
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2434
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    goto :goto_1

    .line 2387
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 2421
    :cond_4
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2422
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2423
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2427
    :cond_5
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2428
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2429
    invoke-direct {p0, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2430
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2431
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2432
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    const/4 v0, 0x0

    goto :goto_1

    .line 2434
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    throw v0
.end method

.method final a()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2805
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m()V

    .line 2809
    :goto_0
    return-void

    .line 2807
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g()V

    goto :goto_0
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2068
    return-void
.end method

.method final a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2618
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2620
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v0, -0x1

    .line 2621
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2622
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 2623
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 2625
    :goto_0
    if-eqz v0, :cond_1

    .line 2626
    if-ne v0, p1, :cond_0

    .line 2627
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2628
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v4

    invoke-virtual {v2, v3, p2, v4}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2629
    invoke-direct {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2630
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2631
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    const/4 v0, 0x1

    .line 2635
    :goto_1
    return v0

    .line 2625
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2635
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2279
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v0, :cond_2

    .line 2280
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2281
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 2282
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2283
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 2285
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 2286
    if-eqz v5, :cond_0

    .line 2287
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap;->d:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2290
    const/4 v0, 0x1

    .line 2296
    :goto_2
    return v0

    .line 2284
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2282
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2296
    goto :goto_2
.end method

.method final a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2649
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2651
    :try_start_0
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v2, v1, -0x1

    .line 2652
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 2654
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2655
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v4, v4, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2657
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v3

    .line 2658
    if-ne v3, p3, :cond_0

    .line 2659
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2660
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2661
    invoke-direct {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2662
    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    const/4 v0, 0x1

    .line 2669
    :goto_1
    return v0

    .line 2665
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .line 2653
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2669
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2300
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2304
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2306
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 2308
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2309
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2313
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2314
    if-nez v2, :cond_0

    .line 2315
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2316
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    :goto_1
    return v0

    .line 2319
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->d:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2320
    invoke-direct {p0, v1, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2321
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    const/4 v0, 0x1

    goto :goto_1

    .line 2325
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2326
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    goto :goto_1

    .line 2307
    :cond_2
    :try_start_3
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2331
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    goto :goto_1

    .line 2333
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    throw v0
.end method

.method final b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2228
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v0, :cond_2

    .line 2229
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 2231
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 2232
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2236
    if-eqz v0, :cond_1

    .line 2237
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v2, p1, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2241
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 2242
    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2252
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k()V

    :goto_1
    return-object v0

    .line 2230
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2250
    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k()V

    throw v0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2816
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2817
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m()V

    .line 2827
    :cond_0
    :goto_0
    return-void

    .line 2819
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l()V

    goto :goto_0

    .line 2821
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2081
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-wide v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->e:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;J)V

    .line 2083
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_0
    return-void
.end method

.method final b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2712
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->d(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return v0

    .line 2717
    :cond_1
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2718
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2719
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2720
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2724
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2725
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v3, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 2726
    invoke-direct {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 2727
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    .line 2728
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2676
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2678
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 2680
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2681
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2683
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v2

    .line 2684
    if-ne v2, p3, :cond_0

    .line 2685
    invoke-direct {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->e(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2686
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    const/4 v0, 0x1

    .line 2692
    :goto_1
    return v0

    .line 2688
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    .line 2679
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2692
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2549
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2552
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2554
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    .line 2555
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2556
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2557
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 2559
    :goto_0
    if-eqz v2, :cond_3

    .line 2560
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2561
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2563
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2564
    if-nez v5, :cond_1

    .line 2565
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    move v0, v1

    :goto_1
    return v0

    .line 2566
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap;->d:Lcom/google/common/base/Equivalence;

    invoke-interface {v6, p3, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2567
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2568
    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2570
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2571
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2572
    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    const/4 v0, 0x1

    goto :goto_1

    .line 2559
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2579
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    move v0, v1

    goto :goto_1

    .line 2581
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    throw v0
.end method

.method final c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2745
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2756
    :cond_0
    :goto_0
    return-object v0

    .line 2748
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2749
    if-eqz v1, :cond_0

    .line 2752
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2753
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->f()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2756
    goto :goto_0
.end method

.method final c()V
    .locals 0

    .prologue
    .line 2838
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->m()V

    .line 2840
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l()V

    .line 2841
    return-void
.end method

.method final c(Ljava/lang/Object;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2257
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v1, :cond_0

    .line 2258
    invoke-direct {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(I)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 2260
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 2261
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2265
    if-eqz v2, :cond_1

    .line 2266
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2270
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2275
    :cond_0
    return v0

    .line 2259
    :cond_1
    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v1

    goto :goto_0
.end method

.method final d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2513
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2515
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a()V

    .line 2517
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    .line 2518
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2519
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2520
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-object v2, v0

    .line 2522
    :goto_0
    if-eqz v2, :cond_2

    .line 2523
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2524
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->l:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap;->c:Lcom/google/common/base/Equivalence;

    invoke-interface {v5, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2526
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2527
    if-nez v1, :cond_0

    .line 2528
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2543
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2530
    :cond_0
    :try_start_1
    iget v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2531
    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    .line 2533
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    add-int/lit8 v2, v2, -0x1

    .line 2534
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2535
    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2543
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    throw v0

    .line 2522
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 2541
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b()V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method final d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2867
    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v1, :cond_1

    .line 2868
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->lock()V

    .line 2870
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2871
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2872
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2874
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2875
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2876
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2878
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->b:I

    .line 2879
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2881
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    .line 2884
    :cond_1
    return-void

    .line 2881
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method
