.class Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/facebook/orca/ops/OrcaServiceOperation;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/ops/OrcaServiceOperation;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {p2}, Lcom/facebook/orca/server/IOrcaService$Stub;->a(Landroid/os/IBinder;)Lcom/facebook/orca/server/IOrcaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-static {v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;->a:Lcom/facebook/orca/ops/OrcaServiceOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/OrcaServiceOperation;Z)Z

    .line 87
    return-void
.end method
