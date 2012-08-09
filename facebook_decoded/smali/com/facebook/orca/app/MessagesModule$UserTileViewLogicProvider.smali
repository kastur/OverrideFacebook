.class Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/photos/tiles/UserTileViewLogic;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/photos/tiles/UserTileViewLogic;
    .locals 4

    .prologue
    .line 1443
    new-instance v2, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    const-class v1, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    const-class v3, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Ljavax/inject/Provider;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;->b()Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    move-result-object v0

    return-object v0
.end method
