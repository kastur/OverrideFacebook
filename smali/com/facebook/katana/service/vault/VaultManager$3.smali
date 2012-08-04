.class Lcom/facebook/katana/service/vault/VaultManager$3;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "VaultManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/vault/VaultManager;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/vault/VaultManager;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "vault"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vault GK fetched with value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vault:device_oid"

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 103
    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultManager;->a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "reason"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-static {v1}, Lcom/facebook/katana/service/vault/VaultManager;->a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->b()V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$3;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->c()V

    goto :goto_0
.end method
