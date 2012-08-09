.class Lcom/facebook/katana/util/logging/NotificationsLogger$PushNotificationEvent;
.super Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;
.source "NotificationsLogger.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 248
    const-string v0, "push_notification"

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;-><init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Ljava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 253
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 254
    const-string v1, "ct"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "ci"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 256
    const-string v1, "n"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "u"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
