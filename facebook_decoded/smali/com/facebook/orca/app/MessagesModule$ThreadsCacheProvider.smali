.class Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ThreadsCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/ThreadsCache;
    .locals 4

    .prologue
    .line 902
    new-instance v3, Lcom/facebook/orca/cache/ThreadsCache;

    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v1, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/MessagesCollectionMerger;

    const-class v2, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;-><init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/threads/MessagesCollectionMerger;Lcom/facebook/orca/threads/ThreadSummaryStitching;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;->b()Lcom/facebook/orca/cache/ThreadsCache;

    move-result-object v0

    return-object v0
.end method
