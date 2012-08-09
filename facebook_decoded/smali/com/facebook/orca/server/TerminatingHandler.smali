.class public Lcom/facebook/orca/server/TerminatingHandler;
.super Ljava/lang/Object;
.source "TerminatingHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/DeferredOperationResult;
    .locals 3
    .parameter

    .prologue
    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter

    .prologue
    .line 5
    invoke-static {p1}, Lcom/facebook/orca/server/TerminatingHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/DeferredOperationResult;

    move-result-object v0

    return-object v0
.end method
