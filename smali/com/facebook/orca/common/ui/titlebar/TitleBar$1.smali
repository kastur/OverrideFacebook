.class Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;
.super Lcom/facebook/orca/activity/SafeBroadcastReceiver;
.source "TitleBar.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    const-string v0, "com.facebook.orca.ACTION_PERSISTENT_CHANNEL_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->invalidate()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v0, "com.facebook.orca.ACTION_ORCA_CONFIG_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$1;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V

    goto :goto_0
.end method
