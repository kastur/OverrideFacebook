.class Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/images/FetchImageTask;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/images/FetchImageTask;
    .locals 5

    .prologue
    .line 1299
    new-instance v4, Lcom/facebook/orca/images/FetchImageTask;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-class v2, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/ImageCache;

    const-class v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/images/FetchImageTask;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/util/AndroidThreadUtil;)V

    return-object v4
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;->b()Lcom/facebook/orca/images/FetchImageTask;

    move-result-object v0

    return-object v0
.end method
