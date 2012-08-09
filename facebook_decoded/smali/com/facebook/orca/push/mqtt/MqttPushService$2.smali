.class Lcom/facebook/orca/push/mqtt/MqttPushService$2;
.super Ljava/lang/Object;
.source "MqttPushService.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/push/mqtt/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/orca/push/mqtt/MqttPushService;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/orca/push/mqtt/MqttPushService$2;->a:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-static {}, Lcom/facebook/orca/push/mqtt/MqttPushService;->c()Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/prefs/PrefKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/push/mqtt/MqttPushService$2;->a:Lcom/facebook/orca/push/mqtt/MqttPushService;

    invoke-static {v0}, Lcom/facebook/orca/push/mqtt/MqttPushService;->a(Lcom/facebook/orca/push/mqtt/MqttPushService;)V

    .line 182
    :cond_0
    return-void
.end method
