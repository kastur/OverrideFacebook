.class public Lcom/facebook/orca/server/DeferredOperationResult;
.super Lcom/facebook/orca/server/OperationResult;
.source "DeferredOperationResult.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/orca/server/OperationResult;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/orca/server/DeferredOperationResult;->a:Lcom/facebook/orca/common/async/Deferred;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/async/Deferred;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/server/DeferredOperationResult;->a:Lcom/facebook/orca/common/async/Deferred;

    return-object v0
.end method
