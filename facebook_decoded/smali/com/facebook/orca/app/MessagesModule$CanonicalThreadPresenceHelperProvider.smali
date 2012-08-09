.class Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2506
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2506
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;
    .locals 3

    .prologue
    .line 2511
    new-instance v2, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v1, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/presence/PresenceManager;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;-><init>(Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/presence/PresenceManager;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2506
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;->b()Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    move-result-object v0

    return-object v0
.end method
