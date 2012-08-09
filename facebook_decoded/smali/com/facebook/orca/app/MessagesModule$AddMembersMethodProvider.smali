.class Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/AddMembersMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1494
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/AddMembersMethod;
    .locals 2

    .prologue
    .line 1498
    new-instance v1, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    const-class v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/PickedUserUtils;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/AddMembersMethod;-><init>(Lcom/facebook/orca/protocol/methods/PickedUserUtils;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1494
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;->b()Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    move-result-object v0

    return-object v0
.end method
