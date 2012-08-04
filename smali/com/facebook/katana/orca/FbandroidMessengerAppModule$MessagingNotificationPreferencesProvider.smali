.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/MessagingNotificationPreferences;",
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
    .line 225
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/notify/MessagingNotificationPreferences;
    .locals 3

    .prologue
    .line 230
    new-instance v1, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;

    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-static {v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;->b()Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    move-result-object v0

    return-object v0
.end method
