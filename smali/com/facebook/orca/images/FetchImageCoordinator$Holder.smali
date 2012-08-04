.class Lcom/facebook/orca/images/FetchImageCoordinator$Holder;
.super Ljava/lang/Object;
.source "FetchImageCoordinator.java"


# instance fields
.field final a:Lcom/facebook/orca/common/async/Deferred;

.field final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/images/FetchImageCoordinator;Lcom/facebook/orca/images/ImageCacheKey;Lcom/facebook/orca/common/async/Deferred;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 31
    iput-object p4, p0, Lcom/facebook/orca/images/FetchImageCoordinator$Holder;->b:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method
