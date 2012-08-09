.class Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrcaNetworkManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/net/OrcaNetworkManager;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/net/OrcaNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/net/OrcaNetworkManager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;-><init>(Lcom/facebook/orca/net/OrcaNetworkManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 75
    const-string v1, "otherNetwork"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 77
    const-string v1, "isFailover"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 79
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 83
    iget-object v1, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v1}, Lcom/facebook/orca/net/OrcaNetworkManager;->a(Lcom/facebook/orca/net/OrcaNetworkManager;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 86
    :cond_0
    const-string v1, "orca:OrcaNetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connectivity changed: connected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v2}, Lcom/facebook/orca/net/OrcaNetworkManager;->b(Lcom/facebook/orca/net/OrcaNetworkManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;->a:Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-static {v0}, Lcom/facebook/orca/net/OrcaNetworkManager;->c(Lcom/facebook/orca/net/OrcaNetworkManager;)Lcom/facebook/orca/app/ActivityBroadcaster;

    move-result-object v0

    const-string v1, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/ActivityBroadcaster;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
