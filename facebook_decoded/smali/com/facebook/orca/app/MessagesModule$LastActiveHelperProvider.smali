.class Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/LastActiveHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/users/LastActiveHelper;
    .locals 5

    .prologue
    .line 964
    new-instance v4, Lcom/facebook/orca/users/LastActiveHelper;

    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    const-class v1, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    const-class v2, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/cache/DataCache;

    const-class v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/orca/users/LastActiveHelper;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/threads/ThreadParticipantUtils;Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/cache/ThreadDisplayCache;)V

    return-object v4
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;->b()Lcom/facebook/orca/users/LastActiveHelper;

    move-result-object v0

    return-object v0
.end method
