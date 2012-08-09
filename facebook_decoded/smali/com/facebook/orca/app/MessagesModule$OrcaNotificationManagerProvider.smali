.class Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/OrcaNotificationManager;",
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
    .line 2487
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2487
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/notify/OrcaNotificationManager;
    .locals 11

    .prologue
    .line 2491
    new-instance v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    const-class v3, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/presence/PresenceManager;

    const-class v4, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    const-class v5, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/notify/InAppNotificationController;

    const-class v6, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-class v7, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    const-class v8, Ljava/lang/String;

    const-class v9, Lcom/facebook/orca/annotations/MessagesForegroundProviderUri;

    invoke-virtual {p0, v8, v9}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-class v9, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    const-class v10, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {p0, v10}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/orca/inject/ContextScope;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/orca/notify/OrcaNotificationManager;-><init>(Landroid/content/Context;Lcom/facebook/orca/notify/NotificationSettingsUtil;Lcom/facebook/orca/presence/PresenceManager;Lcom/facebook/orca/notify/MessagingNotificationRenderer;Lcom/facebook/orca/notify/InAppNotificationController;Lcom/facebook/orca/common/util/AndroidThreadUtil;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Ljava/lang/String;Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;Lcom/facebook/orca/inject/ContextScope;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2487
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;->b()Lcom/facebook/orca/notify/OrcaNotificationManager;

    move-result-object v0

    return-object v0
.end method
