.class Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threads/MessagesUiReorderer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2322
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2322
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/threads/MessagesUiReorderer;
    .locals 3

    .prologue
    .line 2326
    new-instance v1, Lcom/facebook/orca/threads/MessagesUiReorderer;

    const-class v0, Lcom/facebook/orca/users/User;

    const-class v2, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/common/util/Clock;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/Clock;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/threads/MessagesUiReorderer;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/common/util/Clock;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2322
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;->b()Lcom/facebook/orca/threads/MessagesUiReorderer;

    move-result-object v0

    return-object v0
.end method
