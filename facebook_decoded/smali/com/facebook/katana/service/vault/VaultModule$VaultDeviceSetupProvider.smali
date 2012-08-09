.class Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "VaultModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/service/vault/VaultDeviceSetup;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/vault/VaultModule;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->a:Lcom/facebook/katana/service/vault/VaultModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;)V

    return-void
.end method

.method private b()Lcom/facebook/katana/service/vault/VaultDeviceSetup;
    .locals 7

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->a:Lcom/facebook/katana/service/vault/VaultModule;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultModule;->a(Lcom/facebook/katana/service/vault/VaultModule;)Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/facebook/katana/service/vault/VaultImageFetcher;

    invoke-virtual {p0, v2}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/vault/VaultImageFetcher;

    const-class v3, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v3}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    const-class v4, Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

    invoke-virtual {p0, v4}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;

    const-class v5, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    invoke-virtual {p0, v5}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;

    const-class v6, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-virtual {p0, v6}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/vault/VaultDeviceSetup;-><init>(Landroid/content/Context;Lcom/facebook/katana/service/vault/VaultImageFetcher;Lcom/facebook/orca/protocol/base/SingleMethodRunner;Lcom/facebook/katana/service/vault/methods/VaultDevicePostMethod;Lcom/facebook/katana/service/vault/methods/VaultDeviceUpdateMethod;Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultModule$VaultDeviceSetupProvider;->b()Lcom/facebook/katana/service/vault/VaultDeviceSetup;

    move-result-object v0

    return-object v0
.end method
