.class Lcom/facebook/katana/service/vault/VaultModule$VaultGetSyncedImageStatusMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "VaultModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultModule$VaultGetSyncedImageStatusMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    invoke-direct {v0}, Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/facebook/katana/service/vault/VaultModule$VaultGetSyncedImageStatusMethodProvider;->b()Lcom/facebook/katana/service/vault/methods/VaultGetSyncedImageStatusMethod;

    move-result-object v0

    return-object v0
.end method
