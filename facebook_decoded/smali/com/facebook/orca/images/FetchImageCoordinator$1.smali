.class Lcom/facebook/orca/images/FetchImageCoordinator$1;
.super Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;
.source "FetchImageCoordinator.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/images/ImageCacheKey;

.field private synthetic b:Lcom/facebook/orca/common/async/Deferred;

.field private synthetic c:Lcom/facebook/orca/images/FetchImageCoordinator;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->c:Lcom/facebook/orca/images/FetchImageCoordinator;

    iput-object p2, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->a:Lcom/facebook/orca/images/ImageCacheKey;

    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->b:Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {p0}, Lcom/facebook/orca/images/FetchImageTask$OnCompletedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->c:Lcom/facebook/orca/images/FetchImageCoordinator;

    iget-object v1, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->a:Lcom/facebook/orca/images/ImageCacheKey;

    iget-object v2, p0, Lcom/facebook/orca/images/FetchImageCoordinator$1;->b:Lcom/facebook/orca/common/async/Deferred;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/orca/images/FetchImageCoordinator;->a(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method
