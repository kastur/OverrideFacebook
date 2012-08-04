.class Landroid/override/OverrideSensorManager$1;
.super Ljava/lang/Object;
.source "OverrideSensorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/OverrideSensorManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideSensorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "binder"

    .prologue
    .line 167
    iget-object v1, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    invoke-static {p2}, Landroid/override/IOverrideSensorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/override/IOverrideSensorService;

    move-result-object v2

    #setter for: Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;
    invoke-static {v1, v2}, Landroid/override/OverrideSensorManager;->access$002(Landroid/override/OverrideSensorManager;Landroid/override/IOverrideSensorService;)Landroid/override/IOverrideSensorService;

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;
    invoke-static {v1}, Landroid/override/OverrideSensorManager;->access$000(Landroid/override/OverrideSensorManager;)Landroid/override/IOverrideSensorService;

    move-result-object v1

    iget-object v2, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/override/OverrideSensorManager;->access$100(Landroid/override/OverrideSensorManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    #getter for: Landroid/override/OverrideSensorManager;->mSensorDataListener:Landroid/override/IOverrideSensorDataListener$Stub;
    invoke-static {v3}, Landroid/override/OverrideSensorManager;->access$200(Landroid/override/OverrideSensorManager;)Landroid/override/IOverrideSensorDataListener$Stub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/override/IOverrideSensorService;->registerSensorDataListener(Ljava/lang/String;Landroid/override/IOverrideSensorDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "OverrideSensorManager"

    const-string v2, "onServiceConnected : RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/override/OverrideSensorManager$1;->this$0:Landroid/override/OverrideSensorManager;

    const/4 v1, 0x0

    #setter for: Landroid/override/OverrideSensorManager;->mService:Landroid/override/IOverrideSensorService;
    invoke-static {v0, v1}, Landroid/override/OverrideSensorManager;->access$002(Landroid/override/OverrideSensorManager;Landroid/override/IOverrideSensorService;)Landroid/override/IOverrideSensorService;

    .line 178
    return-void
.end method
