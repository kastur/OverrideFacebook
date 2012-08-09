.class Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/OrcaWakeLockManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/OrcaWakeLockManager;
    .locals 3

    .prologue
    .line 922
    new-instance v1, Lcom/facebook/orca/common/OrcaWakeLockManager;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/OrcaWakeLockManager;-><init>(Landroid/os/PowerManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;->b()Lcom/facebook/orca/common/OrcaWakeLockManager;

    move-result-object v0

    return-object v0
.end method
