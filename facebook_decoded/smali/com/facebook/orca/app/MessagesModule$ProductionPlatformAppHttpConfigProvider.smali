.class Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2240
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/config/PlatformAppHttpConfig;
    .locals 1

    .prologue
    .line 2245
    const-class v0, Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaProductionConfig;->g()Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2240
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;->b()Lcom/facebook/orca/config/PlatformAppHttpConfig;

    move-result-object v0

    return-object v0
.end method
