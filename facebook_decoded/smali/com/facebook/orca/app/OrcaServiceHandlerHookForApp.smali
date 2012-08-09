.class Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;
.source "OrcaServiceHandlerHookForApp.java"


# instance fields
.field private final a:Lcom/facebook/orca/app/OrcaDataManager;

.field private final b:Lcom/facebook/orca/push/PushManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/app/OrcaDataManager;Lcom/facebook/orca/push/PushManager;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerHook;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    .line 24
    iput-object p2, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushManager;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->b:Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/PushManager;->a()V

    .line 39
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const-string v0, "relogin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;->a:Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->c()V

    .line 34
    :cond_0
    return-void
.end method
