.class Lcom/facebook/orca/cache/SendMessageManager$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "SendMessageManager.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/cache/SendMessageManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/SendMessageManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager$2;->b:Lcom/facebook/orca/cache/SendMessageManager;

    iput-object p2, p0, Lcom/facebook/orca/cache/SendMessageManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$2;->b:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Ljava/lang/String;Lcom/facebook/orca/ops/ServiceException;)V

    .line 275
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$2;->b:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-static {v0, p1}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/SendMessageManager;Lcom/facebook/orca/server/OperationResult;)V

    .line 270
    return-void
.end method
