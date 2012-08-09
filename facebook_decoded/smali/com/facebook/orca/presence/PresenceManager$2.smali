.class Lcom/facebook/orca/presence/PresenceManager$2;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/presence/PresenceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/presence/PresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$2;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$2;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->e(Lcom/facebook/orca/presence/PresenceManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$2;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->g(Lcom/facebook/orca/presence/PresenceManager;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/presence/PresenceManager$2$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/presence/PresenceManager$2$1;-><init>(Lcom/facebook/orca/presence/PresenceManager$2;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->d(Ljava/lang/Runnable;)V

    .line 389
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v1, "orca:PresenceManager"

    const-string v2, "Exception loading users"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
