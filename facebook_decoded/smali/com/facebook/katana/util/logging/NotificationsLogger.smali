.class public Lcom/facebook/katana/util/logging/NotificationsLogger;
.super Ljava/lang/Object;
.source "NotificationsLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "NOTIF_LOG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EVENT_TYPE"

    sget-object v2, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLEAR_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "NOTIF_LOG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EVENT_TYPE"

    sget-object v2, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLICK_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->a:Ljava/lang/String;

    const/high16 v2, 0x1400

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 315
    sget-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->JEWEL_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v0, Lcom/facebook/katana/util/logging/ActionEvent;

    const-string v1, "jewel_notification"

    const-string v3, ""

    const-string v4, ""

    const/4 v10, 0x0

    move-wide v7, v5

    move-object v9, v2

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/util/logging/ActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroid/graphics/Point;)V

    .line 326
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 327
    const-string v2, "u"

    invoke-virtual {v1, v2, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/ActionEvent;->a(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    .line 331
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/util/logging/NotificationsLogger$PushNotificationEvent;

    invoke-direct {v1, p2, p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$PushNotificationEvent;-><init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/util/logging/NotificationsLogger$JewelNotificationEvent;

    invoke-direct {v1, p2, p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$JewelNotificationEvent;-><init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0
.end method
