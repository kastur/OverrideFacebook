.class public abstract Lcom/facebook/orca/activity/SafeBroadcastReceiver;
.super Ljava/lang/Object;
.source "SafeBroadcastReceiver.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/IntentFilter;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b:Landroid/content/IntentFilter;

    .line 30
    new-instance v0, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/SafeBroadcastReceiver$1;-><init>(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)V

    iput-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->c:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/activity/SafeBroadcastReceiver;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->d:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->d:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "orca:SafeBroadcastReceiver"

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->d:Z

    goto :goto_0
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->d:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/activity/SafeBroadcastReceiver;->d:Z

    .line 56
    :cond_0
    return-void
.end method
