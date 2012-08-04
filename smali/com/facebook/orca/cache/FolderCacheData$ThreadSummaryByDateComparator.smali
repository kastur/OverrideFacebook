.class Lcom/facebook/orca/cache/FolderCacheData$ThreadSummaryByDateComparator;
.super Ljava/lang/Object;
.source "FolderCacheData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/threads/ThreadSummary;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/facebook/orca/cache/FolderCacheData$ThreadSummaryByDateComparator;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 203
    const/4 v0, -0x1

    .line 207
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 205
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    check-cast p1, Lcom/facebook/orca/threads/ThreadSummary;

    check-cast p2, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-static {p1, p2}, Lcom/facebook/orca/cache/FolderCacheData$ThreadSummaryByDateComparator;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    return v0
.end method
