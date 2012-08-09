.class Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;
.super Landroid/database/ContentObserver;
.source "VaultNewImageContentObserver.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p2, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->b:Landroid/net/Uri;

    .line 22
    iput-object p3, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->c:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detected change from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->c:Landroid/content/Context;

    const-class v2, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/facebook/katana/service/vault/VaultNewImageContentObserver;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void
.end method
