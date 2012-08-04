.class Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/InAppNotificationController;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2553
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2553
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/notify/InAppNotificationController;
    .locals 3

    .prologue
    .line 2558
    new-instance v2, Lcom/facebook/orca/notify/InAppNotificationController;

    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/notify/InAppNotificationController;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/app/OrcaAppType;)V

    return-object v2
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2553
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;->b()Lcom/facebook/orca/notify/InAppNotificationController;

    move-result-object v0

    return-object v0
.end method
