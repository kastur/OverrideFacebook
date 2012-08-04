.class Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threadview/ThreadViewTitleHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2517
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2517
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/threadview/ThreadViewTitleHelper;
    .locals 2

    .prologue
    .line 2521
    new-instance v1, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;-><init>(Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2517
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;->b()Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    move-result-object v0

    return-object v0
.end method
