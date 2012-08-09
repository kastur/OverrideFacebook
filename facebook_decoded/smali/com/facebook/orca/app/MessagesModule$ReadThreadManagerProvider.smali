.class Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ReadThreadManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2300
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/ReadThreadManager;
    .locals 4

    .prologue
    .line 2304
    new-instance v2, Lcom/facebook/orca/cache/ReadThreadManager;

    const-class v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v3, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v1, v3}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v1, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/orca/cache/ReadThreadManager;-><init>(Lcom/facebook/orca/app/OrcaActivityBroadcaster;Ljavax/inject/Provider;Lcom/facebook/orca/cache/ThreadsCache;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;->b()Lcom/facebook/orca/cache/ReadThreadManager;

    move-result-object v0

    return-object v0
.end method
