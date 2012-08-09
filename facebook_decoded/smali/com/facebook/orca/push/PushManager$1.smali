.class Lcom/facebook/orca/push/PushManager$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "PushManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/push/PushManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/PushManager;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/facebook/orca/push/PushManager$1;->a:Lcom/facebook/orca/push/PushManager;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$1;->a:Lcom/facebook/orca/push/PushManager;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/PushManager;->a(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$1;->a:Lcom/facebook/orca/push/PushManager;

    invoke-static {v0, p1}, Lcom/facebook/orca/push/PushManager;->a(Lcom/facebook/orca/push/PushManager;Lcom/facebook/orca/server/OperationResult;)V

    .line 203
    return-void
.end method
