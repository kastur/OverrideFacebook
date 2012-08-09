.class Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/location/LocationServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/location/LocationServiceHandler;
    .locals 2

    .prologue
    .line 1360
    new-instance v0, Lcom/facebook/orca/location/LocationServiceHandler;

    const-class v1, Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/location/LocationServiceHandler;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;->b()Lcom/facebook/orca/location/LocationServiceHandler;

    move-result-object v0

    return-object v0
.end method
