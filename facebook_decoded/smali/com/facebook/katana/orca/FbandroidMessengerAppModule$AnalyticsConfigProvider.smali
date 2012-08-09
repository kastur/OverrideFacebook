.class Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidMessengerAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/analytics/AnalyticsConfig;",
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
    .line 256
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/analytics/AnalyticsConfig;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/facebook/katana/orca/FbAnalyticsConfig;

    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;->a:Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-static {v1}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/users/User;

    const-class v3, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/orca/FbAnalyticsConfig;-><init>(Landroid/content/Context;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;->b()Lcom/facebook/orca/analytics/AnalyticsConfig;

    move-result-object v0

    return-object v0
.end method
