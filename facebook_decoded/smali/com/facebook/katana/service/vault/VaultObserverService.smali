.class public Lcom/facebook/katana/service/vault/VaultObserverService;
.super Landroid/app/Service;
.source "VaultObserverService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/katana/service/vault/VaultObserverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/vault/VaultObserverService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    sget-object v0, Lcom/facebook/katana/service/vault/VaultObserverService;->a:Ljava/lang/String;

    const-string v1, "Enabling Vault Observer Service"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;-><init>(Landroid/os/Handler;Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/service/vault/VaultObserverService;->b:Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    .line 28
    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/VaultObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultObserverService;->b:Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    invoke-virtual {v1}, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->a()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultObserverService;->b:Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "reason"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/vault/VaultObserverService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/katana/service/vault/VaultObserverService;->a:Ljava/lang/String;

    const-string v1, "Disabling Vault Observer Service"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/katana/service/vault/VaultObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultObserverService;->b:Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/katana/service/vault/VaultObserverService;->a:Ljava/lang/String;

    const-string v1, "Starting Vault Observer Service"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
