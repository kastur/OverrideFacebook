.class Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/katana/activity/ActivityAuthHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/katana/activity/ActivityAuthHelper;
    .locals 2

    .prologue
    .line 77
    new-instance v1, Lcom/facebook/katana/activity/ActivityAuthHelper;

    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-direct {v1, v0}, Lcom/facebook/katana/activity/ActivityAuthHelper;-><init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;->b()Lcom/facebook/katana/activity/ActivityAuthHelper;

    move-result-object v0

    return-object v0
.end method
