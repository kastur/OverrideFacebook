.class Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer$1;
.super Ljava/lang/Object;
.source "OrcaLogBoundConnectionsInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer$1;->a:Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer$1;->a:Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;->a(Lcom/facebook/orca/app/OrcaLogBoundConnectionsInitializer;)V

    .line 48
    return-void
.end method
