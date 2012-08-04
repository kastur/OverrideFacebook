.class public Lcom/facebook/katana/service/method/NotificationsGet;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "NotificationsGet.java"


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookNotifications;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/facebook/katana/model/FacebookNotifications;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v3, "GET"

    const-string v4, "notifications.get"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/facebook/katana/service/method/NotificationsGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const-string v1, "notifications_history"

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookNotifications;

    .line 98
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/facebook/katana/model/FacebookNotifications;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookNotifications;-><init>()V

    .line 101
    :cond_0
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/facebook/katana/service/method/NotificationsGet;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-static {p0, p1}, Lcom/facebook/katana/service/method/MarkJewelSeen;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;)Ljava/lang/String;

    .line 107
    invoke-static {p0}, Lcom/facebook/katana/service/method/NotificationsGet;->a(Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v6

    .line 108
    sget-object v0, Lcom/facebook/katana/service/method/NotificationsGet$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/MarkJewelSeen$Jewel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string v0, "JEWEL_STATE"

    const-string v1, "Impossible exception: invalid jewel type."

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookNotifications;->g()V

    .line 123
    :goto_1
    invoke-static {}, Lcom/facebook/katana/service/method/NotificationsGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "notifications_history"

    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookNotifications;->n()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookNotifications;->e()V

    goto :goto_1

    .line 116
    :pswitch_2
    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookNotifications;->f()V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/facebook/katana/service/method/NotificationsGet;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 90
    const-class v1, Lcom/facebook/katana/model/FacebookNotifications;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookNotifications;

    .line 91
    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookNotifications;->a(Landroid/content/Context;)V

    .line 92
    return-object v0
.end method

.method private static i()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookNotifications;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/katana/service/method/NotificationsGet;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v1, Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;

    invoke-direct {v1}, Lcom/facebook/katana/service/method/NotificationsGet$NotificationsManagedStoreClient;-><init>()V

    sget-object v2, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    sput-object v0, Lcom/facebook/katana/service/method/NotificationsGet;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 46
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/NotificationsGet;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 7
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v5

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->o:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/facebook/katana/service/method/NotificationsGet;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/model/FacebookNotifications;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->f:Lcom/facebook/katana/model/FacebookNotifications;

    .line 79
    invoke-static {}, Lcom/facebook/katana/service/method/NotificationsGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/method/NotificationsGet;->o:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "notifications_history"

    iget-object v6, p0, Lcom/facebook/katana/service/method/NotificationsGet;->f:Lcom/facebook/katana/model/FacebookNotifications;

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->f:Lcom/facebook/katana/model/FacebookNotifications;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookNotifications;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookNotifications;->c(Landroid/content/Context;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final h()Lcom/facebook/katana/model/FacebookNotifications;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/katana/service/method/NotificationsGet;->f:Lcom/facebook/katana/model/FacebookNotifications;

    return-object v0
.end method
