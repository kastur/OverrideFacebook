.class Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;
    .locals 4

    .prologue
    .line 787
    new-instance v3, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    const-class v1, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/push/PushManager;

    const-class v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;-><init>(Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/push/PushManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;->b()Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    move-result-object v0

    return-object v0
.end method
