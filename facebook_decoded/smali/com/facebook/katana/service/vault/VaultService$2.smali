.class Lcom/facebook/katana/service/vault/VaultService$2;
.super Ljava/lang/Object;
.source "VaultService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/facebook/katana/service/vault/VaultService;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/vault/VaultService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultService$2;->b:Lcom/facebook/katana/service/vault/VaultService;

    iput p2, p0, Lcom/facebook/katana/service/vault/VaultService$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService$2;->b:Lcom/facebook/katana/service/vault/VaultService;

    iget v1, p0, Lcom/facebook/katana/service/vault/VaultService$2;->a:I

    invoke-static {v0, v1}, Lcom/facebook/katana/service/vault/VaultService;->a(Lcom/facebook/katana/service/vault/VaultService;I)V

    .line 122
    return-void
.end method
