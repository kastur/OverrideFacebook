.class Lcom/facebook/katana/service/vault/VaultService$3;
.super Ljava/lang/Object;
.source "VaultService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/vault/VaultService;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/vault/VaultService;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultService$3;->a:Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService$3;->a:Lcom/facebook/katana/service/vault/VaultService;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultService;->a(Lcom/facebook/katana/service/vault/VaultService;)V

    .line 147
    return-void
.end method
