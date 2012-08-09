.class public abstract Lcom/facebook/orca/common/WakeLockHolder;
.super Ljava/lang/Object;
.source "WakeLockHolder.java"


# instance fields
.field public final a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/OrcaWakeLockManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/facebook/orca/common/OrcaWakeLockManager;->a(ILjava/lang/String;)Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/WakeLockHolder;->a:Lcom/facebook/orca/common/OrcaWakeLockManager$WakeLock;

    .line 16
    return-void
.end method
