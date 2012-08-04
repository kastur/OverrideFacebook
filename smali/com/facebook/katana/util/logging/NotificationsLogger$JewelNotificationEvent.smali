.class Lcom/facebook/katana/util/logging/NotificationsLogger$JewelNotificationEvent;
.super Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;
.source "NotificationsLogger.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    const-string v0, "jewel_notification"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;-><init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Ljava/lang/String;)V

    .line 266
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 270
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 271
    const-string v1, "l"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "hn"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 273
    const-string v1, "iu"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 274
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
