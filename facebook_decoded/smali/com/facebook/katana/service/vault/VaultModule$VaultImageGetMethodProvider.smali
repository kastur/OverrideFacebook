.class Lcom/facebook/katana/service/vault/VaultModule$VaultImageGetMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "VaultModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultModule$VaultImageGetMethodProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;

    invoke-direct {v0}, Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/facebook/katana/service/vault/VaultModule$VaultImageGetMethodProvider;->b()Lcom/facebook/katana/service/vault/methods/VaultImageGetMethod;

    move-result-object v0

    return-object v0
.end method
