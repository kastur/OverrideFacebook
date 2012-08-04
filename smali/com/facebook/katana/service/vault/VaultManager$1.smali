.class Lcom/facebook/katana/service/vault/VaultManager$1;
.super Ljava/lang/Object;
.source "VaultManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/vault/VaultManager;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/vault/VaultManager;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultManager$1;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const-string v0, "vault_sync_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "instant_upload pref change!"

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultManager$1;->a:Lcom/facebook/katana/service/vault/VaultManager;

    invoke-virtual {v0}, Lcom/facebook/katana/service/vault/VaultManager;->b()V

    .line 67
    :cond_0
    return-void
.end method
