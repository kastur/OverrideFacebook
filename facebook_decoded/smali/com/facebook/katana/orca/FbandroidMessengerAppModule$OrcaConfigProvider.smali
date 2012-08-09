.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/OrcaConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/config/OrcaConfig;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Lcom/facebook/katana/orca/FbandroidProductionConfig;

    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-static {v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)Landroid/app/Application;

    move-result-object v2

    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/orca/FbandroidProductionConfig;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;->b()Lcom/facebook/orca/config/OrcaConfig;

    move-result-object v0

    return-object v0
.end method
