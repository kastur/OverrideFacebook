.class abstract Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field private f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field private synthetic g:Lcom/google/common/collect/CustomConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 3434
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3435
    iget-object v0, p1, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a:I

    .line 3436
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    .line 3437
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b()V

    .line 3438
    return-void
.end method

.method private a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3499
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3501
    invoke-interface {p1}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3502
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2}, Lcom/google/common/collect/CustomConcurrentHashMap;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->b(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3504
    :cond_0
    new-instance v2, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3505
    const/4 v0, 0x1

    .line 3508
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 3441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3443
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3461
    :cond_0
    :goto_0
    return-void

    .line 3447
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3451
    :cond_2
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a:I

    if-ltz v0, :cond_0

    .line 3452
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap;->b:[Lcom/google/common/collect/CustomConcurrentHashMap$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a:I

    aget-object v0, v0, v1

    .line 3453
    iget v1, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->a:I

    if-eqz v1, :cond_2

    .line 3454
    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Segment;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3455
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    .line 3456
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3469
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 3471
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-direct {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3472
    const/4 v0, 0x1

    .line 3476
    :goto_1
    return v0

    .line 3470
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    goto :goto_0

    .line 3476
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 3484
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    if-ltz v0, :cond_2

    .line 3485
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 3486
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->d:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-direct {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3487
    :cond_1
    const/4 v0, 0x1

    .line 3491
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 3518
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3520
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3521
    invoke-direct {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->b()V

    .line 3522
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->e:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3527
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$HashIterator;->f:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;

    .line 3529
    return-void

    .line 3526
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
