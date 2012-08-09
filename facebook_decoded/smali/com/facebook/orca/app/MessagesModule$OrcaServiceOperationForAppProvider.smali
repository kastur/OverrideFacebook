.class Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;
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


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2180
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 4

    .prologue
    .line 2184
    new-instance v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/facebook/orca/server/OrcaService;

    const-class v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2180
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;->b()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    return-object v0
.end method
