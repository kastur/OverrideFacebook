.class Lcom/facebook/katana/service/vault/VaultService$1;
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
    .line 107
    iput-object p1, p0, Lcom/facebook/katana/service/vault/VaultService$1;->b:Lcom/facebook/katana/service/vault/VaultService;

    iput p2, p0, Lcom/facebook/katana/service/vault/VaultService$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    const-string v0, "clearing vault notifications (start_id:%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/katana/service/vault/VaultService$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/service/vault/VaultService$1;->b:Lcom/facebook/katana/service/vault/VaultService;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b(Landroid/content/Context;)V

    .line 112
    return-void
.end method
