.class Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaActivityBroadcaster;",
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
    .line 738
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/app/OrcaActivityBroadcaster;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;->b()Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    move-result-object v0

    return-object v0
.end method
