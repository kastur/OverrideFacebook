.class public Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;
.super Ljava/lang/Object;
.source "VaultImageGetMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-string v0, "vault_image"

    invoke-static {v0, p1}, Lcom/facebook/katana/service/vault/methods/VaultImagesFQLHelpers;->a(Ljava/lang/String;Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;

    invoke-virtual {p0, p1}, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;->a(Lcom/facebook/katana/service/vault/methods/VaultImageGetParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-virtual {p0, p2}, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;->a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/util/List;
    .locals 1
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

    move-result-object v0

    return-object v0
.end method
