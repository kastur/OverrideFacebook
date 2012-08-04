.class Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;
.super Lcom/facebook/orca/server/IOrcaService$Stub;
.source "OrcaService.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaService;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;->a:Lcom/facebook/orca/server/OrcaService;

    invoke-direct {p0}, Lcom/facebook/orca/server/IOrcaService$Stub;-><init>()V

    .line 379
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;->a:Lcom/facebook/orca/server/OrcaService;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaService$OrcaServiceStub;->a:Lcom/facebook/orca/server/OrcaService;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/server/OrcaService;->a(Lcom/facebook/orca/server/OrcaService;Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    return v0
.end method
