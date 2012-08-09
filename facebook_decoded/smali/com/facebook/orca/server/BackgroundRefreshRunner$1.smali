.class Lcom/facebook/orca/server/BackgroundRefreshRunner$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "BackgroundRefreshRunner.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;

.field private synthetic b:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iput-object p2, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 5
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J

    move-result-wide v1

    invoke-static {}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 110
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const-wide/16 v1, 0x2

    iget-object v3, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v3}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->b(Lcom/facebook/orca/server/BackgroundRefreshRunner;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;J)J

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$1;->b:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 98
    return-void
.end method
