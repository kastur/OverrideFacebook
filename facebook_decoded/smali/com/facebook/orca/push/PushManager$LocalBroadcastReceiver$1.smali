.class Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver$1;->a:Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;->a(Lcom/facebook/orca/push/PushManager$LocalBroadcastReceiver;)Lcom/facebook/orca/push/PushManager;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/push/PushManager;->a(Lcom/facebook/orca/push/PushManager;)V

    .line 251
    return-void
.end method
