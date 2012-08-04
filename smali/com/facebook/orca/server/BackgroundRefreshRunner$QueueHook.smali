.class public Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;
.super Ljava/lang/Object;
.source "BackgroundRefreshRunner.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceQueueHook;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/BackgroundRefreshRunner;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 313
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;Z)Z

    .line 318
    iget-object v0, p0, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;->a:Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-static {v0}, Lcom/facebook/orca/server/BackgroundRefreshRunner;->a(Lcom/facebook/orca/server/BackgroundRefreshRunner;)V

    .line 319
    return-void
.end method
