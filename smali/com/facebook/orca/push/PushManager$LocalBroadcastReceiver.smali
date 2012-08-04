.class public Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushManager.java"


# instance fields
.field private a:Lcom/facebook/orca/push/PushManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;)Lcom/facebook/orca/push/PushManager;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-static {p1}, Lcom/facebook/orca/app/MessagesDataInitLockHelper;->a(Landroid/content/Context;)V

    .line 241
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 242
    const-class v1, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/PushManager;

    iput-object v0, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushManager;

    .line 244
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/push/PushManager;->a(Lcom/facebook/orca/push/PushManager;Z)Z

    .line 247
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;->a:Lcom/facebook/orca/push/PushManager;

    invoke-static {v0}, Lcom/facebook/orca/push/PushManager;->b(Lcom/facebook/orca/push/PushManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver$1;-><init>(Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method
