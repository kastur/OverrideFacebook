.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/config/OrcaProductionConfig;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/config/OrcaProductionConfig;
    .locals 2

    .prologue
    .line 178
    new-instance v1, Lcom/facebook/orca/config/OrcaProductionConfig;

    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v1, v0}, Lcom/facebook/orca/config/OrcaProductionConfig;-><init>(Landroid/content/pm/PackageInfo;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;->b()Lcom/facebook/orca/config/OrcaProductionConfig;

    move-result-object v0

    return-object v0
.end method
