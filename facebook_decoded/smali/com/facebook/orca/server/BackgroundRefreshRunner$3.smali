.class Lcom/facebook/orca/server/BackgroundRefreshRunner$3;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Lcom/facebook/orca/common/async/CancellableRunnable;)Lcom/facebook/orca/common/async/CancellableRunnable;

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$3;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->c(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
