.class public Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;
.super Ljava/lang/Object;
.source "MeOnlinePresenceManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final b:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private final c:Lcom/facebook/orca/cache/DataCache;

.field private d:Z


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/cache/DataCache;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/cache/DataCache;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->d:Z

    .line 26
    invoke-interface {p1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 28
    invoke-interface {p1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 29
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Z)V

    .line 30
    iput-object p2, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c:Lcom/facebook/orca/cache/DataCache;

    .line 32
    new-instance v0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager$1;-><init>(Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;)V

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 49
    iget-object v1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->d:Z

    return p1
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v1, "chatSetVisibilityParams"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget-object v1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "chat_set_visiblity"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->d:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->c:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->d:Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;->b:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-string v2, "chat_get_visibility"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
