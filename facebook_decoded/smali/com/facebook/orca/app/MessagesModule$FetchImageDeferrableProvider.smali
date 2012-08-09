.class Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageDeferrable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/images/FetchImageDeferrable;
    .locals 5

    .prologue
    .line 1286
    new-instance v3, Lcom/facebook/orca/images/FetchImageDeferrable;

    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    const-class v1, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    const-class v2, Lcom/facebook/orca/images/FetchImageTask;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v2, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/facebook/orca/images/FetchImageDeferrable;-><init>(Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Ljavax/inject/Provider;Lcom/facebook/orca/images/FetchImageCoordinator;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;->b()Lcom/facebook/orca/images/FetchImageDeferrable;

    move-result-object v0

    return-object v0
.end method
