.class final Lcom/facebook/katana/model/FacebookPushNotification$1;
.super Ljava/util/HashMap;
.source "FacebookPushNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v0, "orca_message"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "msg"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "chat"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CHAT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "wall"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->WALL:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "friend"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "friend_confirmed"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->FRIEND_CONFIRMED:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "photo_tag"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PHOTO_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "event_invite"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->EVENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "plan_user_invited"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->EVENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "place_tagged_in_checkin"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->PLACE_TAG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "place_checkin_nearby"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->NEARBY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "item_comment"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "item_reply"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "comment_mention"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->COMMENT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "app_request"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->APP_REQUEST:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "group_activity"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->GROUP_ACTIVITY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "group_comment"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->GROUP_ACTIVITY:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "hotp_login_approvals"

    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->CODE_GENERATOR:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
