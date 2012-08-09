.class Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;
.super Ljava/lang/Object;
.source "VaultNewImageUploader.java"


# instance fields
.field final a:J

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/provider/VaultImageProviderRow;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/util/Map;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/provider/VaultImageProviderRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-wide p1, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->a:J

    .line 307
    iput-object p3, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->b:Ljava/util/Map;

    .line 308
    iput-object p4, p0, Lcom/facebook/katana/service/vault/VaultNewImageUploader$ImagesToSync;->c:Ljava/util/List;

    .line 309
    return-void
.end method
