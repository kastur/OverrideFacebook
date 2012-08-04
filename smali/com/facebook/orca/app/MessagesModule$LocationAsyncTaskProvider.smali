.class Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/LocateUserDeferrable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/location/LocateUserDeferrable;
    .locals 3

    .prologue
    .line 1349
    new-instance v2, Lcom/facebook/orca/location/LocateUserDeferrable;

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-class v1, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/location/LocationCache;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/location/LocateUserDeferrable;-><init>(Landroid/location/LocationManager;Lcom/facebook/orca/location/LocationCache;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;->b()Lcom/facebook/orca/location/LocateUserDeferrable;

    move-result-object v0

    return-object v0
.end method
