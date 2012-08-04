.class public Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "VaultGetSyncedImageStatus.java"


# instance fields
.field public final mDeleted:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "deleted"
    .end annotation
.end field

.field public final mFbid:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mFbid:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;->mDeleted:Z

    .line 18
    return-void
.end method
