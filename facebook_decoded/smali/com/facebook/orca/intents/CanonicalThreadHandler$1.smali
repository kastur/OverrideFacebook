.class Lcom/facebook/orca/intents/CanonicalThreadHandler$1;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "CanonicalThreadHandler.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/intents/CanonicalThreadHandler;


# direct methods
.method constructor <init>(Lcom/facebook/orca/intents/CanonicalThreadHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;->a:Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;->a:Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-static {v0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/ops/ServiceException;)V

    .line 79
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/intents/CanonicalThreadHandler$1;->a:Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-static {v0, p1}, Lcom/facebook/orca/intents/CanonicalThreadHandler;->a(Lcom/facebook/orca/intents/CanonicalThreadHandler;Lcom/facebook/orca/server/OperationResult;)V

    .line 74
    return-void
.end method
