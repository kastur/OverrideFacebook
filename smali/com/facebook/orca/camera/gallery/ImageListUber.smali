.class public Lcom/facebook/orca/camera/gallery/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/facebook/orca/camera/gallery/IImageList;


# instance fields
.field private final a:[Lcom/facebook/orca/camera/gallery/IImageList;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private c:[J

.field private d:I

.field private e:[I

.field private f:I


# direct methods
.method public constructor <init>([Lcom/facebook/orca/camera/gallery/IImageList;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, [Lcom/facebook/orca/camera/gallery/IImageList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/camera/gallery/IImageList;

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    .line 54
    new-instance v2, Ljava/util/PriorityQueue;

    const/4 v3, 0x4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/facebook/orca/camera/gallery/ImageListUber$AscendingComparator;

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/gallery/ImageListUber$AscendingComparator;-><init>(B)V

    :goto_0
    invoke-direct {v2, v3, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    .line 59
    iput v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->e:[I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->f:I

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    array-length v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    aget-object v1, v1, v0

    .line 65
    new-instance v3, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;-><init>(Lcom/facebook/orca/camera/gallery/IImageList;I)V

    .line 66
    invoke-virtual {v3}, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Lcom/facebook/orca/camera/gallery/ImageListUber$DescendingComparator;

    invoke-direct {v0, v1}, Lcom/facebook/orca/camera/gallery/ImageListUber$DescendingComparator;-><init>(B)V

    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method private c()Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;

    .line 144
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget v1, v0, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a:I

    iget v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->f:I

    if-ne v1, v2, :cond_1

    .line 146
    iget v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    add-int/lit8 v1, v1, -0x1

    .line 147
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    aget-wide v3, v2, v1

    add-long/2addr v3, v6

    aput-wide v3, v2, v1

    goto :goto_0

    .line 149
    :cond_1
    iget v1, v0, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a:I

    iput v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->f:I

    .line 150
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    array-length v1, v1

    iget v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    if-ne v1, v2, :cond_2

    .line 151
    iget v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    .line 152
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    iget v3, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iput-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    iget v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    iget v3, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->f:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    aput-wide v3, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 99
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/ImageListUber;->b()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/camera/gallery/ImageListUber;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->e:[I

    .line 107
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 117
    iget v3, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->d:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_6

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->c:[J

    aget-wide v4, v2, v1

    .line 120
    long-to-int v6, v4

    .line 121
    const/16 v2, 0x20

    shr-long/2addr v4, v2

    long-to-int v4, v4

    .line 122
    add-int v2, v0, v6

    if-le v2, p1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->e:[I

    aget v1, v1, v4

    sub-int v0, p1, v0

    add-int/2addr v0, v1

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    aget-object v1, v1, v4

    invoke-interface {v1, v0}, Lcom/facebook/orca/camera/gallery/IImageList;->a(I)Lcom/facebook/orca/camera/gallery/IImage;

    move-result-object v0

    .line 136
    :cond_2
    :goto_1
    return-object v0

    .line 126
    :cond_3
    add-int v2, v0, v6

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->e:[I

    aget v5, v0, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_6
    invoke-direct {p0}, Lcom/facebook/orca/camera/gallery/ImageListUber;->c()Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;

    move-result-object v1

    .line 132
    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    .line 133
    :cond_7
    if-ne v0, p1, :cond_4

    .line 134
    iget-object v0, v1, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->c:Lcom/facebook/orca/camera/gallery/IImage;

    .line 135
    invoke-virtual {v1}, Lcom/facebook/orca/camera/gallery/ImageListUber$MergeSlot;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;
    .locals 4
    .parameter

    .prologue
    .line 161
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 162
    invoke-interface {v0, p1}, Lcom/facebook/orca/camera/gallery/IImageList;->a(Landroid/net/Uri;)Lcom/facebook/orca/camera/gallery/IImage;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 165
    :goto_1
    return-object v0

    .line 161
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 291
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/facebook/orca/camera/gallery/IImageList;->a()V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 79
    .line 80
    iget-object v2, p0, Lcom/facebook/orca/camera/gallery/ImageListUber;->a:[Lcom/facebook/orca/camera/gallery/IImageList;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 81
    invoke-interface {v4}, Lcom/facebook/orca/camera/gallery/IImageList;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return v1
.end method
