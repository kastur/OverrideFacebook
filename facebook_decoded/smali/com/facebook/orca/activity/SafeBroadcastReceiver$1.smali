.class Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-static {v0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "orca:SafeBroadcastReceiver"

    const-string v1, "Called onReceive after it was unregistered."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;->a:Lcom/facebook/orca/activity/SafeBroadcastReceiver;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
