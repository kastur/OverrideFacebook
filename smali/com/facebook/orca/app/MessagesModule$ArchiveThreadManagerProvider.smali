.class Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ArchiveThreadManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2289
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/ArchiveThreadManager;
    .locals 4

    .prologue
    .line 2293
    new-instance v1, Lcom/facebook/orca/cache/ArchiveThreadManager;

    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v2, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/cache/ArchiveThreadManager;-><init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;->b()Lcom/facebook/orca/cache/ArchiveThreadManager;

    move-result-object v0

    return-object v0
.end method
