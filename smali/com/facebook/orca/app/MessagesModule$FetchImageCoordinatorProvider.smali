.class Lcom/facebook/orca/app/MessagesModule$FetchImageCoordinatorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageCoordinator;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1274
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchImageCoordinatorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private static b()Lcom/facebook/orca/images/FetchImageCoordinator;
    .locals 1

    .prologue
    .line 1278
    new-instance v0, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-direct {v0}, Lcom/facebook/orca/images/FetchImageCoordinator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1274
    invoke-static {}, Lcom/facebook/orca/app/MessagesModule$FetchImageCoordinatorProvider;->b()Lcom/facebook/orca/images/FetchImageCoordinator;

    move-result-object v0

    return-object v0
.end method
