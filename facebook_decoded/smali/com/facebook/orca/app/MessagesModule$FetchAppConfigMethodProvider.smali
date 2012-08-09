.class Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1513
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;
    .locals 3

    .prologue
    .line 1517
    new-instance v2, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaAppType;

    const-class v1, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/appconfig/AppConfigSerialization;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;-><init>(Lcom/facebook/orca/app/OrcaAppType;Lcom/facebook/orca/appconfig/AppConfigSerialization;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;->b()Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    move-result-object v0

    return-object v0
.end method
