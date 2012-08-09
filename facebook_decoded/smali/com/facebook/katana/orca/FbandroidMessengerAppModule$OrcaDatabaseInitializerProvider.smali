.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaDatabaseInitializer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/app/OrcaDatabaseInitializer;
    .locals 5

    .prologue
    .line 163
    new-instance v3, Lcom/facebook/orca/app/OrcaDatabaseInitializer;

    const-class v0, Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDatabaseManager;

    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v2, Landroid/content/SharedPreferences;

    const-class v4, Lcom/facebook/orca/annotations/DefaultSharedPreferences;

    invoke-virtual {p0, v2, v4}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/app/OrcaDatabaseInitializer;-><init>(Lcom/facebook/orca/app/OrcaDatabaseManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Landroid/content/SharedPreferences;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;->b()Lcom/facebook/orca/app/OrcaDatabaseInitializer;

    move-result-object v0

    return-object v0
.end method
