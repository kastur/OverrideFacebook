.class Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1779
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;
    .locals 2

    .prologue
    .line 1784
    new-instance v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    const-class v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-direct {v1, v0}, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;-><init>(Lcom/facebook/orca/common/OrcaWakeLockManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;->b()Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    move-result-object v0

    return-object v0
.end method
