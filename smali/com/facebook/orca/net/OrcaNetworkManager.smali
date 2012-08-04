.class public Lcom/facebook/orca/net/OrcaNetworkManager;
.super Ljava/lang/Object;
.source "OrcaNetworkManager.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Lcom/facebook/orca/app/ActivityBroadcaster;

.field private d:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/app/ActivityBroadcaster;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->a:Landroid/content/Context;

    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/net/ConnectivityManager;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Lcom/facebook/orca/app/ActivityBroadcaster;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/net/OrcaNetworkManager;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/net/OrcaNetworkManager;)J
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/net/OrcaNetworkManager;)Lcom/facebook/orca/app/ActivityBroadcaster;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->c:Lcom/facebook/orca/app/ActivityBroadcaster;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;-><init>(Lcom/facebook/orca/net/OrcaNetworkManager;B)V

    iput-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->d:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->d:Lcom/facebook/orca/net/OrcaNetworkManager$NetworkChangedBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->e:J

    .line 47
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/net/OrcaNetworkManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/net/OrcaNetworkManager;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
