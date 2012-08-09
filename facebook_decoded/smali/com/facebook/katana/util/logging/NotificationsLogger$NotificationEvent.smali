.class abstract Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;
.super Lcom/facebook/katana/util/logging/ActionEvent;
.source "NotificationsLogger.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/NotificationsLogger$Event;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->f()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {p2}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->e()J

    move-result-wide v7

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/util/logging/ActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroid/graphics/Point;)V

    .line 241
    invoke-virtual {p0, p2}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;->a(Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationEvent;->a(Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Ljava/lang/String;
.end method
