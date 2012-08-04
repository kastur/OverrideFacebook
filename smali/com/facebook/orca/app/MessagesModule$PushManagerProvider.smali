.class Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/push/PushManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/push/PushManager;
    .locals 9

    .prologue
    .line 1766
    new-instance v0, Lcom/facebook/orca/push/PushManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    const-class v3, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const-class v4, Lcom/facebook/orca/ops/OrcaServiceOperation;

    const-class v5, Lcom/facebook/orca/annotations/FromApplication;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/net/OrcaNetworkManager;

    iget-object v7, p0, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v7}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    const-class v8, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/push/PushManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;Ljavax/inject/Provider;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/net/OrcaNetworkManager;Landroid/app/AlarmManager;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1762
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;->b()Lcom/facebook/orca/push/PushManager;

    move-result-object v0

    return-object v0
.end method
