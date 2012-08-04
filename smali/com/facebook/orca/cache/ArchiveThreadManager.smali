.class public Lcom/facebook/orca/cache/ArchiveThreadManager;
.super Ljava/lang/Object;
.source "ArchiveThreadManager.java"


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

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 31
    iput-object p2, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->b:Ljavax/inject/Provider;

    .line 32
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/ArchiveThreadManager;Lcom/facebook/orca/ops/ServiceException;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/facebook/orca/cache/ArchiveThreadManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/cache/ArchiveThreadManager;Lcom/facebook/orca/server/OperationResult;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/facebook/orca/cache/ArchiveThreadManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->a:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->b(Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 43
    new-instance v0, Lcom/facebook/orca/cache/ArchiveThreadManager$1;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/cache/ArchiveThreadManager$1;-><init>(Lcom/facebook/orca/cache/ArchiveThreadManager;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 54
    invoke-virtual {v6, v3}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 56
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams;

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->ARCHIVED:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v2, "markThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v0, "mark_thread"

    invoke-virtual {v6, v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/cache/ArchiveThreadManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
