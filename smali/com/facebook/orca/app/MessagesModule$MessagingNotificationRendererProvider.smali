.class Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/notify/MessagingNotificationRenderer;",
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
    .line 2534
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2534
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/notify/MessagingNotificationRenderer;
    .locals 10

    .prologue
    .line 2539
    new-instance v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v2}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v3}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const-class v4, Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    const-class v5, Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/intents/MessagingIntentUris;

    const-class v6, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const-class v7, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v7}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/cache/DataCache;

    const-class v8, Lcom/facebook/orca/images/FetchImageTask;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v8

    const-class v9, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {p0, v9}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;-><init>(Landroid/content/Context;Landroid/os/Vibrator;Landroid/app/NotificationManager;Lcom/facebook/orca/notify/MessagingNotificationPreferences;Lcom/facebook/orca/intents/MessagingIntentUris;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/cache/DataCache;Ljavax/inject/Provider;Lcom/facebook/orca/photos/tiles/UserTileViewLogic;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2534
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;->b()Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    move-result-object v0

    return-object v0
.end method
