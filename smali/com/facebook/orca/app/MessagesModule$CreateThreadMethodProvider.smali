.class Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/CreateThreadMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1502
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/CreateThreadMethod;
    .locals 3

    .prologue
    .line 1506
    new-instance v2, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    const-class v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    const-class v1, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;-><init>(Lcom/facebook/orca/protocol/methods/PickedUserUtils;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1502
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;->b()Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    move-result-object v0

    return-object v0
.end method
