.class Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 745
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;
    .locals 2

    .prologue
    .line 749
    new-instance v0, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;->b()Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    move-result-object v0

    return-object v0
.end method
