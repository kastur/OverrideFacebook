.class Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"


# instance fields
.field private a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<TE;>;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 586
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(II)I

    move-result v0

    return v0
.end method

.method private b(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 569
    const/4 v0, -0x1

    .line 579
    :cond_0
    return v0

    .line 571
    :cond_1
    if-lez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 572
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v2, v0, p2

    .line 574
    add-int/lit8 v1, p1, 0x1

    move v0, p1

    :goto_1
    if-ge v1, v2, :cond_0

    .line 575
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a(II)I

    move-result v3

    if-gez v3, :cond_2

    move v0, v1

    .line 574
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)I
    .locals 2
    .parameter

    .prologue
    .line 593
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    .line 594
    if-gez v0, :cond_0

    .line 595
    const/4 v0, -0x1

    .line 597
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private c(ILjava/lang/Object;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 606
    if-nez p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    .line 633
    :goto_0
    return v1

    .line 610
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v3

    .line 611
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 612
    if-eqz v3, :cond_2

    .line 617
    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    .line 618
    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->e(I)I

    move-result v2

    .line 619
    if-eq v2, v3, :cond_2

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 620
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 621
    iget-object v4, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v4, v0, v1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    move v1, v2

    .line 627
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v0, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v0, v2, p1

    .line 629
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, v1

    goto :goto_0

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    move v1, p1

    .line 633
    goto :goto_0

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private static d(I)I
    .locals 1
    .parameter

    .prologue
    .line 720
    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private d(ILjava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(I)I

    move-result v0

    .line 673
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 676
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aput-object p2, v1, v0

    .line 679
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private static e(I)I
    .locals 1
    .parameter

    .prologue
    .line 724
    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static f(I)I
    .locals 1
    .parameter

    .prologue
    .line 728
    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private g(I)I
    .locals 1
    .parameter

    .prologue
    .line 732
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final a(I)I
    .locals 3
    .parameter

    .prologue
    .line 692
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 693
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    move p1, v0

    .line 694
    goto :goto_0

    .line 696
    :cond_0
    return p1
.end method

.method final a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v1

    .line 647
    if-eqz v1, :cond_0

    .line 648
    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v0

    .line 649
    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->e(I)I

    move-result v0

    .line 650
    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 652
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v0

    .line 655
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v3

    aput-object v1, v2, v3

    .line 660
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    goto :goto_0
.end method

.method final a(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 502
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->d(ILjava/lang/Object;)I

    move-result v2

    .line 503
    if-ne v2, p2, :cond_0

    move-object v0, v1

    .line 524
    :goto_0
    return-object v0

    .line 512
    :cond_0
    if-ge v2, p1, :cond_1

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 520
    :goto_1
    invoke-virtual {v1, v2, p3}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(ILjava/lang/Object;)I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 522
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v1, p3, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->f(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 524
    goto :goto_0
.end method

.method final a(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->c(ILjava/lang/Object;)I

    move-result v0

    .line 535
    if-ne v0, p1, :cond_0

    .line 541
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b(ILjava/lang/Object;)I

    .line 542
    return-void

    .line 539
    :cond_0
    const/4 p0, 0x0

    move p1, v0

    goto :goto_0
.end method

.method final b(ILjava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)I"
        }
    .end annotation

    .prologue
    .line 549
    :goto_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->g(I)I

    move-result v0

    .line 551
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 552
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2, v1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v1, v2, p1

    move p1, v0

    .line 557
    goto :goto_0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->b:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    aput-object p2, v0, p1

    .line 559
    return p1
.end method
