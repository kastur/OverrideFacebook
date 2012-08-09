.class Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/OrcaHttpConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2232
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/config/OrcaHttpConfig;
    .locals 1

    .prologue
    .line 2236
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaConfig;->d()Lcom/facebook/orca/config/OrcaHttpConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2232
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;->b()Lcom/facebook/orca/config/OrcaHttpConfig;

    move-result-object v0

    return-object v0
.end method
