.class Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "VaultModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/service/vault/VaultManager;",
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
    .line 59
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;->a:Lcom/facebook/katana/service/vault/VaultModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/vault/VaultModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;-><init>(Lcom/facebook/katana/service/vault/VaultModule;)V

    return-void
.end method

.method private b()Lcom/facebook/katana/service/vault/VaultManager;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/facebook/katana/service/vault/VaultManager;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;->a:Lcom/facebook/katana/service/vault/VaultModule;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultModule;->a(Lcom/facebook/katana/service/vault/VaultModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/vault/VaultManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/katana/service/vault/VaultModule$VaultManagerProvider;->b()Lcom/facebook/katana/service/vault/VaultManager;

    move-result-object v0

    return-object v0
.end method
