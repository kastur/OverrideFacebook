.class Lcom/facebook/orca/threadlist/MeOnlinePresenceManager$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "MeOnlinePresenceManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager$1;->a:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager$1;->a:Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a(Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;Z)Z

    .line 38
    return-void
.end method
