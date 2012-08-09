.class Lcom/facebook/orca/server/OrcaServiceManager$2;
.super Ljava/lang/Object;
.source "OrcaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceManager$2;->a:Lcom/facebook/orca/server/OrcaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager$2;->a:Lcom/facebook/orca/server/OrcaServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OrcaServiceManager;->a(Lcom/facebook/orca/server/OrcaServiceManager;Z)Z

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager$2;->a:Lcom/facebook/orca/server/OrcaServiceManager;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceManager;->b(Lcom/facebook/orca/server/OrcaServiceManager;)V

    .line 73
    return-void
.end method
