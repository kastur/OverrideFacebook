.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Landroid/content/SharedPreferences;",
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
    .line 216
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-static {v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.facebook.orca_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
