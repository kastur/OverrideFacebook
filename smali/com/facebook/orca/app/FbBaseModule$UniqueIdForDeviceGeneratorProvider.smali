.class Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/FbBaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/FbBaseModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;-><init>(Lcom/facebook/orca/app/FbBaseModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;
    .locals 2

    .prologue
    .line 226
    new-instance v1, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v1, v0}, Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/facebook/orca/app/FbBaseModule$UniqueIdForDeviceGeneratorProvider;->b()Lcom/facebook/orca/common/util/UniqueIdForDeviceGenerator;

    move-result-object v0

    return-object v0
.end method
