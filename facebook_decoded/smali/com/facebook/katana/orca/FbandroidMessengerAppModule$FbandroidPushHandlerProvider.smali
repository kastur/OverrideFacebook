.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/orca/FbandroidPushHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/katana/orca/FbandroidPushHandler;
    .locals 3

    .prologue
    .line 271
    new-instance v2, Lcom/facebook/katana/orca/FbandroidPushHandler;

    const-class v0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const-class v1, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-direct {v2, v0, v1}, Lcom/facebook/katana/orca/FbandroidPushHandler;-><init>(Landroid/os/Handler;Lcom/facebook/orca/notify/OrcaForegroundActivityListener;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;->b()Lcom/facebook/katana/orca/FbandroidPushHandler;

    move-result-object v0

    return-object v0
.end method
