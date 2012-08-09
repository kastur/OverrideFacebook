.class Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2249
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2249
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2253
    const-class v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    .line 2254
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2249
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
