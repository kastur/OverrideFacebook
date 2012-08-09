.class Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/GetMeUserMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1590
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/GetMeUserMethod;
    .locals 3

    .prologue
    .line 1594
    new-instance v2, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    const-class v0, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    const-class v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;-><init>(Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;->b()Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    move-result-object v0

    return-object v0
.end method
