.class Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;
.super Ljava/lang/Object;
.source "VaultSyncStatusActivity.java"


# instance fields
.field public a:Lcom/facebook/katana/model/MediaItem;

.field public b:Lcom/facebook/katana/provider/VaultImageProviderRow;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/model/MediaItem;Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->a:Lcom/facebook/katana/model/MediaItem;

    .line 68
    iput-object p2, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->b:Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 69
    return-void
.end method
