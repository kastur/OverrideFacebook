.class Lcom/facebook/orca/presence/PresenceManager$3;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/users/UserKey;

.field private synthetic b:I

.field private synthetic c:Lcom/facebook/orca/presence/PresenceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/facebook/orca/presence/PresenceManager$3;->c:Lcom/facebook/orca/presence/PresenceManager;

    iput-object p2, p0, Lcom/facebook/orca/presence/PresenceManager$3;->a:Lcom/facebook/orca/users/UserKey;

    iput p3, p0, Lcom/facebook/orca/presence/PresenceManager$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/facebook/orca/presence/PresenceManager$3;->c:Lcom/facebook/orca/presence/PresenceManager;

    iget-object v1, p0, Lcom/facebook/orca/presence/PresenceManager$3;->a:Lcom/facebook/orca/users/UserKey;

    iget v2, p0, Lcom/facebook/orca/presence/PresenceManager$3;->b:I

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/presence/PresenceManager;->a(Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/users/UserKey;I)V

    .line 530
    return-void
.end method
