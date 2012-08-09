.class public Lcom/facebook/katana/service/vault/methods/VaultDeletedImageGetMethod;
.super Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;
.source "VaultDeletedImageGetMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/katana/model/FacebookVaultImage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-string v0, "vault_deleted_image"

    invoke-static {v0, p1}, Lcom/facebook/katana/service/vault/methods/VaultImagesFQLHelpers;->a(Ljava/lang/String;Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/methods/VaultDeletedImageGetMethod;->a(Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p2}, Lcom/facebook/katana/service/vault/methods/VaultDeletedImageGetMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/protocol/base/ApiResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookVaultImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Lcom/facebook/katana/service/vault/methods/VaultImagesFQLHelpers;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/util/List;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookVaultImage;

    .line 26
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/katana/model/FacebookVaultImage;->mDeleted:Z

    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method
