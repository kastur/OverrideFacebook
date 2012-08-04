.class Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;
    .locals 8

    .prologue
    .line 1560
    new-instance v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-class v1, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    const-class v2, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    const-class v3, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/users/UserSerialization;

    const-class v4, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    const-class v5, Ljava/lang/Boolean;

    const-class v6, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    const-class v7, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;-><init>(Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;Lcom/facebook/orca/protocol/methods/MessageDeserializer;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;->b()Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    move-result-object v0

    return-object v0
.end method
