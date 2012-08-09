.class Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/ops/OrcaServiceOperation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2168
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2168
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 4

    .prologue
    .line 2172
    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v3, Lcom/facebook/orca/server/OrcaService;

    const-class v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v2, v0, v3, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2168
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;->b()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    return-object v0
.end method
