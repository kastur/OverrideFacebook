.class Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;
    .locals 4

    .prologue
    .line 1643
    new-instance v3, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    const-class v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    const-class v1, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/common/PushDeserialization;

    const-class v2, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;-><init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/push/common/PushDeserialization;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;->b()Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    move-result-object v0

    return-object v0
.end method
