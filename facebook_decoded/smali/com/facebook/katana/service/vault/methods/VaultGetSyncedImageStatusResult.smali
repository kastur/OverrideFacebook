.class public Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "VaultGetSyncedImageStatusResult.java"


# instance fields
.field public mResult:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;
        jsonFieldName = "data"
        valueElementType = Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;->mResult:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusResult;->mResult:Ljava/util/Map;

    return-object v0
.end method
