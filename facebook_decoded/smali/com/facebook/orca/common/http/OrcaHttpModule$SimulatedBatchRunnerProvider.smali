.class Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;
    .locals 2

    .prologue
    .line 173
    new-instance v1, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    const-class v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$SimulatedBatchRunnerProvider;->b()Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;

    move-result-object v0

    return-object v0
.end method
