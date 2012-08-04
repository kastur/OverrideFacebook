.class public Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;
.super Ljava/lang/Object;
.source "VaultGetSyncedImageStatusParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method public constructor <init>(JLjava/util/Collection;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->a:J

    .line 21
    iput-object p3, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->b:Ljava/util/Collection;

    .line 22
    iput-wide p4, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->c:J

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusParams;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
