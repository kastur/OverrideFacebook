.class public Lcom/facebook/orca/server/PreProcessingServiceHandler;
.super Ljava/lang/Object;
.source "PreProcessingServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler$Filter;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/server/OrcaServiceHandlerHook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/Set;

    .line 19
    return-void
.end method


# virtual methods
.method public final H(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 26
    const-string v0, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 28
    invoke-interface {v0, v2}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v2

    .line 34
    const-string v0, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 36
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->a()V

    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/server/PreProcessingServiceHandler;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    .line 40
    invoke-interface {v0}, Lcom/facebook/orca/server/OrcaServiceHandlerHook;->b()V

    goto :goto_2

    .line 42
    :cond_2
    return-object v2
.end method
