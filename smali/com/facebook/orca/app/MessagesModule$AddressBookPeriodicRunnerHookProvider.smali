.class Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2150
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;
    .locals 1

    .prologue
    .line 2155
    const-class v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {v0}, Lcom/facebook/orca/database/AddressBookPeriodicRunner;->a()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2150
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;->b()Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    move-result-object v0

    return-object v0
.end method
