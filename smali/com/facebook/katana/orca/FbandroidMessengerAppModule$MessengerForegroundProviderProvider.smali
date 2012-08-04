.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessengerForegroundProviderProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/MessengerForegroundProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessengerForegroundProviderProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/notify/MessengerForegroundProvider;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/facebook/orca/notify/MessengerForegroundProvider;

    invoke-direct {v0}, Lcom/facebook/orca/notify/MessengerForegroundProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessengerForegroundProviderProvider;->b()Lcom/facebook/orca/notify/MessengerForegroundProvider;

    move-result-object v0

    return-object v0
.end method
