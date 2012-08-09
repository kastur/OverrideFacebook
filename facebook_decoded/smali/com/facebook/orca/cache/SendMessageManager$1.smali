.class Lcom/facebook/orca/cache/SendMessageManager$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "SendMessageManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threads/Message;

.field private synthetic b:Z

.field private synthetic c:Lcom/facebook/orca/cache/SendMessageManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/threads/Message;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->c:Lcom/facebook/orca/cache/SendMessageManager;

    iput-object p2, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->a:Lcom/facebook/orca/threads/Message;

    iput-boolean p3, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->b:Z

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->c:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->a:Lcom/facebook/orca/threads/Message;

    invoke-static {v0, p1, v1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/ops/ServiceException;Lcom/facebook/orca/threads/Message;)V

    .line 191
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->c:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->a:Lcom/facebook/orca/threads/Message;

    iget-boolean v2, p0, Lcom/facebook/orca/cache/SendMessageManager$1;->b:Z

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/server/OperationResult;Lcom/facebook/orca/threads/Message;Z)V

    .line 186
    return-void
.end method
