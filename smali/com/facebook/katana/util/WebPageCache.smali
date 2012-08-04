.class public Lcom/facebook/katana/util/WebPageCache;
.super Ljava/lang/Object;
.source "WebPageCache.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/katana/util/WebPageCache$CacheStore;


# direct methods
.method private declared-synchronized a(Landroid/content/Context;)Lcom/facebook/katana/util/WebPageCache$CacheStore;
    .locals 4
    .parameter

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/util/WebPageCache;->d:Lcom/facebook/katana/util/WebPageCache$CacheStore;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/facebook/katana/util/WebPageCache$CacheStore;

    iget-object v1, p0, Lcom/facebook/katana/util/WebPageCache;->c:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/katana/util/WebPageCache;->a:I

    iget v3, p0, Lcom/facebook/katana/util/WebPageCache;->b:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/katana/util/WebPageCache$CacheStore;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/facebook/katana/util/WebPageCache;->d:Lcom/facebook/katana/util/WebPageCache$CacheStore;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/WebPageCache;->d:Lcom/facebook/katana/util/WebPageCache$CacheStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 131
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?><html>%s</html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/WebPageCache;->a(Landroid/content/Context;)Lcom/facebook/katana/util/WebPageCache$CacheStore;

    move-result-object v0

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/util/WebPageCache$CacheStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/util/WebPageCache;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
