.class Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/cache/ThreadDisplayCache;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/cache/ThreadDisplayCache;
    .locals 4

    .prologue
    .line 880
    new-instance v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    const-class v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/attachments/AttachmentDataFactory;Lcom/facebook/orca/threads/ThreadParticipantUtils;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;->b()Lcom/facebook/orca/cache/ThreadDisplayCache;

    move-result-object v0

    return-object v0
.end method
