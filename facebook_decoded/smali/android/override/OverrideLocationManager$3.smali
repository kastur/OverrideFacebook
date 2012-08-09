.class Landroid/override/OverrideLocationManager$3;
.super Ljava/lang/Object;
.source "OverrideLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/override/OverrideLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/override/OverrideLocationManager;


# direct methods
.method constructor <init>(Landroid/override/OverrideLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Landroid/override/OverrideLocationManager$3;->this$0:Landroid/override/OverrideLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "componentName"
    .parameter "binder"

    .prologue
    .line 204
    const-string v2, "OverrideLocationManager"

    const-string v3, "Connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Landroid/override/OverrideLocationManager$3;->this$0:Landroid/override/OverrideLocationManager;

    invoke-static {p2}, Landroid/override/IOverrideLocationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/override/IOverrideLocationService;

    move-result-object v3

    #setter for: Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;
    invoke-static {v2, v3}, Landroid/override/OverrideLocationManager;->access$202(Landroid/override/OverrideLocationManager;Landroid/override/IOverrideLocationService;)Landroid/override/IOverrideLocationService;

    .line 207
    iget-object v2, p0, Landroid/override/OverrideLocationManager$3;->this$0:Landroid/override/OverrideLocationManager;

    #getter for: Landroid/override/OverrideLocationManager;->mTaskeQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Landroid/override/OverrideLocationManager;->access$300(Landroid/override/OverrideLocationManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 208
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 210
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 214
    iget-object v0, p0, Landroid/override/OverrideLocationManager$3;->this$0:Landroid/override/OverrideLocationManager;

    const/4 v1, 0x0

    #setter for: Landroid/override/OverrideLocationManager;->mService:Landroid/override/IOverrideLocationService;
    invoke-static {v0, v1}, Landroid/override/OverrideLocationManager;->access$202(Landroid/override/OverrideLocationManager;Landroid/override/IOverrideLocationService;)Landroid/override/IOverrideLocationService;

    .line 215
    return-void
.end method
