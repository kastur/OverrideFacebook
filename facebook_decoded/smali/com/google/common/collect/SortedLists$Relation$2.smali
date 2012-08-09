.class final enum Lcom/google/common/collect/SortedLists$Relation$2;
.super Lcom/google/common/collect/SortedLists$Relation;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$Relation;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method final exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;III",
            "Ljava/util/Comparator",
            "<-TE;>;Z)I"
        }
    .end annotation

    .prologue
    .line 117
    if-nez p7, :cond_1

    .line 133
    :cond_0
    return p4

    :cond_1
    move v0, p4

    move p4, p3

    .line 124
    :goto_0
    if-ge p4, v0, :cond_0

    .line 125
    sub-int v1, v0, p4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p6, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 127
    if-gez v2, :cond_2

    .line 128
    add-int/lit8 p4, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method final exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;I",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 138
    add-int/lit8 v0, p3, -0x1

    return v0
.end method

.method final reverse()Lcom/google/common/collect/SortedLists$Relation;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/collect/SortedLists$Relation$2;->CEILING:Lcom/google/common/collect/SortedLists$Relation;

    return-object v0
.end method
