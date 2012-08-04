.class Lcom/facebook/orca/server/OrcaServiceQueue$3;
.super Ljava/lang/Object;
.source "OrcaServiceQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/server/OrcaServiceQueue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/server/OrcaServiceQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/orca/server/OrcaServiceQueue$3;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/orca/server/OrcaServiceQueue$3;->a:Lcom/facebook/orca/server/OrcaServiceQueue;

    invoke-static {v0}, Lcom/facebook/orca/server/OrcaServiceQueue;->d(Lcom/facebook/orca/server/OrcaServiceQueue;)V

    .line 164
    return-void
.end method
