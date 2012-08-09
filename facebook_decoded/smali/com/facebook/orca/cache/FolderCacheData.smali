.class public Lcom/facebook/orca/cache/FolderCacheData;
.super Ljava/lang/Object;
.source "FolderCacheData.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/util/MapWithSecondaryOrdering",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:Lcom/facebook/orca/threads/FolderCounts;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threads/FolderName;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->e:J

    .line 34
    new-instance v0, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    new-instance v1, Lcom/facebook/orca/cache/FolderCacheData$ThreadSummaryByDateComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/orca/cache/FolderCacheData$ThreadSummaryByDateComparator;-><init>(B)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/common/util/MapWithSecondaryOrdering",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/facebook/orca/cache/FolderCacheData;->e:J

    .line 130
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/FolderCounts;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/orca/cache/FolderCacheData;->f:Lcom/facebook/orca/threads/FolderCounts;

    .line 148
    return-void
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/facebook/orca/cache/FolderCacheData;->b:Z

    .line 76
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->c:Z

    .line 94
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->b:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/facebook/orca/cache/FolderCacheData;->d:Z

    .line 112
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->d:Z

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->e:J

    return-wide v0
.end method

.method public final f()Lcom/facebook/orca/threads/FolderCounts;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->f:Lcom/facebook/orca/threads/FolderCounts;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->clear()V

    .line 155
    return-void
.end method

.method public final h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->a:Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/MapWithSecondaryOrdering;->clear()V

    .line 190
    iput-boolean v2, p0, Lcom/facebook/orca/cache/FolderCacheData;->c:Z

    .line 191
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->e:J

    .line 192
    iput-boolean v2, p0, Lcom/facebook/orca/cache/FolderCacheData;->d:Z

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/cache/FolderCacheData;->f:Lcom/facebook/orca/threads/FolderCounts;

    .line 194
    return-void
.end method
