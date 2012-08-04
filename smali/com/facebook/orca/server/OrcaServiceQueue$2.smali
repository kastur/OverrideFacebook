.class Lcom/facebook/orca/server/OrcaServiceQueue$2;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceProgressCallback;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

.field private synthetic b:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$2;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iput-object p2, p0, Lcom/facebook/orca/server/OrcaServiceQueue$2;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$2;->b:Lcom/facebook/orca/server/OrcaServiceQueue;

    iget-object v1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$2;->a:Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/server/OrcaServiceQueue;->a(Lcom/facebook/orca/server/OrcaServiceQueue;Lcom/facebook/orca/server/OrcaServiceQueue$OperationHolder;Lcom/facebook/orca/server/OperationResult;)V

    .line 148
    return-void
.end method
