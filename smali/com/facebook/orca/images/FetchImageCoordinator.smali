.class public Lcom/facebook/orca/images/FetchImageCoordinator;
.super Ljava/lang/Object;
.source "FetchImageCoordinator.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/FetchImageCoordinator$Holder;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->b:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->a:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;

    .line 76
    iget-object v2, v0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, v0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->a:Lcom/facebook/orca/common/async/Deferred;

    iget-object v0, v0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_0
    iget-object v0, v0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->a:Lcom/facebook/orca/common/async/Deferred;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageCoordinator;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageCoordinator;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/images/FetchImageCoordinator;->a(Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->a:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/orca/images/FetchImageCoordinator$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/FetchImageCoordinator$2;-><init>(Lcom/facebook/orca/images/FetchImageCoordinator;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;-><init>(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;)Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/orca/images/FetchImageCoordinator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/orca/images/FetchImageCoordinator$1;-><init>(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;)V

    return-object v0
.end method
