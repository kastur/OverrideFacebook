.class Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/threads/ThreadDateUtil;",
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
    .line 1981
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/threads/ThreadDateUtil;
    .locals 2

    .prologue
    .line 1985
    new-instance v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/ThreadDateUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;->b()Lcom/facebook/orca/threads/ThreadDateUtil;

    move-result-object v0

    return-object v0
.end method
