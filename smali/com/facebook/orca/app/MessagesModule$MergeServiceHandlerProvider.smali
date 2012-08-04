.class Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/merge/MergeServiceHandler;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2383
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/merge/MergeServiceHandler;
    .locals 4

    .prologue
    .line 2387
    new-instance v1, Lcom/facebook/orca/merge/MergeServiceHandler;

    const-class v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/merge/MergeServiceHandler;-><init>(Lcom/facebook/orca/threads/ThreadsCollectionMerger;Ljavax/inject/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2383
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;->b()Lcom/facebook/orca/merge/MergeServiceHandler;

    move-result-object v0

    return-object v0
.end method
