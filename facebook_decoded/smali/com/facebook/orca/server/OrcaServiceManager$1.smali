.class Lcom/facebook/orca/server/OrcaServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OrcaServiceManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceManager$1;->a:Lcom/facebook/orca/server/OrcaServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceManager$1;->a:Lcom/facebook/orca/server/OrcaServiceManager;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceManager;->a(Lcom/facebook/orca/server/OrcaServiceManager;)V

    .line 47
    return-void
.end method
