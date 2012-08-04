.class Lcom/facebook/katana/service/vault/VaultManager$2;
.super Landroid/content/BroadcastReceiver;
.source "VaultManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/vault/VaultManager;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/vault/VaultManager;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultManager$2;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "battery level change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->c(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_LOW"

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$2;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->c()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$2;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-static {v0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultManager$2;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-static {v2}, Lcom/facebook/katana/service/vault/VaultManager;->a(Lcom/facebook/katana/service/vault/VaultManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/katana/service/vault/VaultObserverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
