.class Lcom/facebook/orca/presence/PresenceManager$2$1;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/presence/PresenceManager$2;


# direct methods
.method constructor <init>(Lcom/facebook/orca/presence/PresenceManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$2$1;->a:Lcom/facebook/orca/presence/PresenceManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$2$1;->a:Lcom/facebook/orca/presence/PresenceManager$2;

    iget-object v0, v0, Lcom/facebook/orca/presence/PresenceManager$2;->a:Lcom/facebook/orca/presence/PresenceManager;

    invoke-static {v0}, Lcom/facebook/orca/presence/PresenceManager;->f(Lcom/facebook/orca/presence/PresenceManager;)V

    .line 387
    return-void
.end method
