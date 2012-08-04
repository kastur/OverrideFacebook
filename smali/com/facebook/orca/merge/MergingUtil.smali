.class public Lcom/facebook/orca/merge/MergingUtil;
.super Ljava/lang/Object;
.source "MergingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([J)J
    .locals 6
    .parameter

    .prologue
    .line 81
    const-wide/high16 v1, -0x8000

    .line 82
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, p0, v0

    .line 83
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-wide v1
.end method

.method public static varargs a([Lcom/facebook/orca/server/DataFreshnessResult;)Lcom/facebook/orca/server/DataFreshnessResult;
    .locals 5
    .parameter

    .prologue
    .line 36
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 37
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, p0, v2

    .line 38
    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v4, :cond_1

    .line 39
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 40
    :cond_1
    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    if-ne v0, v4, :cond_2

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v1, v4, :cond_2

    .line 42
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_1

    .line 43
    :cond_2
    sget-object v4, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v1, v4, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 47
    :cond_3
    return-object v1
.end method

.method public static varargs a([Lcom/facebook/orca/threads/FolderCounts;)Lcom/facebook/orca/threads/FolderCounts;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    .line 52
    .line 56
    array-length v7, p0

    move-wide v3, v5

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v8, p0, v0

    .line 57
    invoke-virtual {v8}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v9

    add-int/2addr v1, v9

    .line 58
    invoke-virtual {v8}, Lcom/facebook/orca/threads/FolderCounts;->b()I

    move-result v9

    add-int/2addr v2, v9

    .line 59
    invoke-virtual {v8}, Lcom/facebook/orca/threads/FolderCounts;->c()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 60
    invoke-virtual {v8}, Lcom/facebook/orca/threads/FolderCounts;->d()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/facebook/orca/threads/FolderCounts;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJJ)V

    return-object v0
.end method

.method public static varargs a([Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 14
    const/4 v2, 0x0

    .line 16
    array-length v5, p0

    move v4, v3

    move v0, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p0, v4

    .line 17
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 16
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_0

    .line 22
    :cond_0
    if-nez v0, :cond_2

    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 31
    :cond_1
    :goto_2
    return-object v2

    .line 24
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 27
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 28
    array-length v2, p0

    move v0, v3

    :goto_3
    if-ge v0, v2, :cond_3

    aget-object v3, p0, v0

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 31
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public static varargs a([Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-boolean v3, p0, v1

    .line 73
    if-eqz v3, :cond_1

    .line 74
    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
