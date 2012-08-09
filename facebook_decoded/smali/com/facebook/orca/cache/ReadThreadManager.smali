.class public Lcom/facebook/orca/cache/ReadThreadManager;
.super Ljava/lang/Object;
.source "ReadThreadManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/cache/ThreadsCache;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/cache/ThreadsCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/cache/ThreadsCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/cache/ReadThreadManager;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 28
    iput-object p2, p0, Lcom/facebook/orca/cache/ReadThreadManager;->b:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/facebook/orca/cache/ReadThreadManager;->c:Lcom/facebook/orca/cache/ThreadsCache;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/cache/ReadThreadManager;->c:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;J)V

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/cache/ReadThreadManager;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 41
    invoke-virtual {v6, v3}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 43
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams;

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 47
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v3, "markThreadParams"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    const-string v0, "mark_thread"

    invoke-virtual {v6, v0, v2}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/cache/ReadThreadManager;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    .line 51
    return-void
.end method
