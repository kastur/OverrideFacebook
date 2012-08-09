.class public Lcom/facebook/orca/images/FetchImageDeferrable;
.super Ljava/lang/Object;
.source "FetchImageDeferrable.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private final a:Lcom/facebook/orca/images/ImageCache;

.field private final b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/images/FetchImageCoordinator;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Ljavax/inject/Provider;Lcom/facebook/orca/images/FetchImageCoordinator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/images/ImageCache;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;",
            "Lcom/facebook/orca/images/FetchImageCoordinator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Lcom/facebook/orca/images/ImageCache;

    .line 33
    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    .line 34
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->c:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->d:Lcom/facebook/orca/images/FetchImageCoordinator;

    .line 36
    return-void
.end method

.method private static a(Landroid/net/Uri;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    .line 40
    check-cast p1, Lcom/facebook/orca/images/FetchImageParams;

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->c()Lcom/facebook/orca/images/ImageCacheKey;

    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/ImageCache;->e(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cached image failure"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/ImageCache;->b(Lcom/facebook/orca/images/ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 53
    :cond_2
    new-instance v2, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v2}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->d:Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/images/FetchImageCoordinator;->a(Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;)Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;

    move-result-object v4

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a(Ljava/lang/Object;)Lcom/facebook/orca/common/async/KeyedAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask;

    .line 56
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0, v4}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V

    :goto_1
    move-object v0, v2

    .line 93
    goto :goto_0

    .line 61
    :cond_3
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->b()Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 63
    new-instance v1, Lcom/facebook/orca/images/ImageCacheKey;

    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/facebook/orca/images/ImageCacheKey;-><init>(Landroid/net/Uri;)V

    .line 64
    iget-object v5, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->a:Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v5, v1}, Lcom/facebook/orca/images/ImageCache;->c(Lcom/facebook/orca/images/ImageCacheKey;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    const/4 v0, 0x1

    move v1, v0

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask;

    .line 70
    invoke-virtual {v0, p1}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 71
    invoke-virtual {v0, v4}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;)V

    .line 79
    if-eqz v1, :cond_4

    .line 80
    const-string v1, "fetch-image-task-processing"

    .line 91
    :goto_3
    iget-object v4, p0, Lcom/facebook/orca/images/FetchImageDeferrable;->b:Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {v4, v1, v3, v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/orca/common/async/KeyedAsyncTask;)V

    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "api."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    invoke-static {v1, v6}, Lcom/facebook/orca/images/FetchImageDeferrable;->a(Landroid/net/Uri;I)I

    move-result v1

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetch-image-api-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 87
    :cond_5
    invoke-static {v1, v6}, Lcom/facebook/orca/images/FetchImageDeferrable;->a(Landroid/net/Uri;I)I

    move-result v1

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetch-image-other-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move v1, v0

    goto :goto_2
.end method
