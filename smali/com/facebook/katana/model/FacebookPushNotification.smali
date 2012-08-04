.class public Lcom/facebook/katana/model/FacebookPushNotification;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPushNotification.java"


# static fields
.field private static final KEY_ALERT_ID:Ljava/lang/String; = "i"

.field private static final KEY_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field private static final KEY_EID:Ljava/lang/String; = "eid"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "o"

.field private static final KEY_OBJECT_TYPE:Ljava/lang/String; = "p"

.field private static final KEY_PID:Ljava/lang/String; = "pid"

.field private static final KEY_POST_ID:Ljava/lang/String; = "post_id"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TRACE_INFO_KEY:Ljava/lang/String; = "trace_info"

.field private static final sMapTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mHref:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "href"
    .end annotation
.end field

.field public final mMessage:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "message"
    .end annotation
.end field

.field public final mParams:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "params"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mRawPushData:Ljava/lang/String;

.field public final mTargetUid:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "target_uid"
    .end annotation
.end field

.field public final mTimestamp:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "time"
    .end annotation
.end field

.field public final mType:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field

.field public final mUnreadCount:I
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "unread_count"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/katana/model/FacebookPushNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification;->LOG_TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/katana/model/FacebookPushNotification$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookPushNotification$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookPushNotification;->sMapTypes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 105
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mType:Ljava/lang/String;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mTimestamp:J

    .line 107
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mMessage:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mUnreadCount:I

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mTargetUid:J

    .line 110
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mHref:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    .line 112
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;
    .locals 2
    .parameter

    .prologue
    .line 134
    if-eqz p0, :cond_1

    .line 135
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 136
    if-ltz v0, :cond_0

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 139
    :cond_0
    sget-object v0, Lcom/facebook/katana/model/FacebookPushNotification;->sMapTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    .line 140
    if-eqz v0, :cond_1

    .line 144
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->DEFAULT:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    sget-object v1, Lcom/facebook/katana/model/FacebookPushNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NumberFormatException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 437
    if-nez v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 13
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 158
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 160
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    move-result-object v5

    .line 162
    iget-object v6, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mMessage:Ljava/lang/String;

    .line 163
    iget v1, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mUnreadCount:I

    .line 165
    const v1, 0x7f020259

    .line 169
    sget-object v7, Lcom/facebook/katana/model/FacebookPushNotification$2;->a:[I

    invoke-virtual {v5}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 356
    const/16 v2, 0x3e8

    .line 357
    const-string v0, "fb://notifications"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 364
    :goto_0
    if-nez v0, :cond_a

    .line 365
    const-string v0, "fb://notifications"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v2, v0

    .line 369
    :goto_1
    if-eqz v2, :cond_9

    .line 370
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v1, "i"

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 371
    if-nez v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    invoke-direct {v1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;-><init>()V

    iget-object v7, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    iget v5, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mUnreadCount:I

    invoke-virtual {v1, v5}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(J)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v5, "o"

    invoke-static {v1, v5}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v5, "p"

    invoke-static {v1, v5}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->c(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    .line 382
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->a(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {p1, v4, v1, v2, v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILandroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V

    .line 398
    :cond_0
    :goto_3
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    const-string v2, "notif_wall_posts"

    invoke-static {v4, v2}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/16 v2, 0x9

    .line 181
    invoke-static {p1, v11}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_b

    .line 183
    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 184
    invoke-static {p1, v3, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 185
    goto/16 :goto_0

    .line 190
    :pswitch_2
    const-string v0, "notif_friend_requests"

    invoke-static {v4, v0}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const v1, 0x7f02025a

    .line 196
    const-string v0, "fb://friends/requests/"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 198
    goto/16 :goto_0

    .line 201
    :pswitch_3
    const-string v2, "notif_friend_confirmations"

    invoke-static {v4, v2}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/16 v2, 0xa

    .line 207
    iget-object v3, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v4, "uid"

    invoke-static {v3, v4}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_b

    .line 209
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    goto/16 :goto_0

    .line 215
    :pswitch_4
    const-string v1, "notif_event_invites"

    invoke-static {v4, v1}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const v1, 0x7f02025b

    .line 221
    iget-object v2, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v4, "eid"

    invoke-static {v2, v4}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    const-string v0, "fb://event/%s"

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v2, v4, v11

    invoke-static {v0, v4}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    :cond_1
    if-nez v0, :cond_2

    .line 229
    const-string v0, "fb://events"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v4, v3

    move v3, v1

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_2
    const/16 v2, 0xb

    move v3, v1

    move v4, v2

    .line 235
    goto/16 :goto_0

    .line 238
    :pswitch_5
    const-string v0, "notif_nearby_friends"

    invoke-static {v4, v0}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v2, 0x5

    .line 243
    const-string v0, "fb://places"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 245
    goto/16 :goto_0

    .line 248
    :pswitch_6
    const-string v3, "notif_photo_tags"

    invoke-static {v4, v3}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    const/16 v3, 0x8

    .line 254
    iget-object v4, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v7, "uid"

    invoke-static {v4, v7}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 255
    iget-object v7, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v8, "pid"

    invoke-static {v7, v8}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 256
    if-eqz v4, :cond_d

    if-eqz v7, :cond_d

    .line 257
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/katana/util/PhotoUtils;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v7, "fb://photo/%s/%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v11

    aput-object v0, v2, v12

    invoke-static {v7, v2}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v4, v3

    move v3, v1

    .line 260
    goto/16 :goto_0

    .line 265
    :pswitch_7
    const-string v7, "notif_groups"

    invoke-static {v4, v7}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const/4 v4, 0x6

    .line 272
    iget-object v7, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v8, "group_id"

    invoke-static {v7, v8}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-static {v7}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 274
    iget-object v8, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v9, "message_id"

    invoke-static {v8, v9}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 275
    iget-object v9, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v10, "comment_id"

    invoke-static {v9, v10}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 277
    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 278
    const-string v0, "fb://group/%s/%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v11

    aput-object v8, v3, v12

    aput-object v9, v3, v2

    invoke-static {v0, v3}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    :cond_3
    :goto_4
    if-nez v0, :cond_4

    .line 291
    const-string v0, "fb://group/%s/wall/inner"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v7, v2, v11

    invoke-static {v0, v2}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_4
    move v3, v1

    .line 294
    goto/16 :goto_0

    .line 283
    :cond_5
    if-eqz v8, :cond_3

    .line 284
    const-string v0, "fb://group/%s/%d"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v7, v2, v11

    aput-object v8, v2, v12

    invoke-static {v0, v2}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    .line 298
    :pswitch_8
    const-string v2, "notif_comments"

    invoke-static {v4, v2}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/16 v2, 0xc

    .line 305
    iget-object v3, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v4, "post_id"

    invoke-static {v3, v4}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    iget-object v4, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v7, "pid"

    invoke-static {v4, v7}, Lcom/facebook/katana/model/FacebookPushNotification;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-static {v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 309
    const-string v4, "fb://post/%s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-static {v4, v7}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_5
    if-eqz v3, :cond_b

    .line 324
    invoke-static {p1, v3}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-static {v4}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 313
    :try_start_0
    invoke-static {v4}, Lcom/facebook/katana/util/PhotoUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v4}, Lcom/facebook/katana/util/PhotoUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 315
    const-string v7, "fb://photofeedback/%s/%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    invoke-static {v7, v8}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_5

    .line 319
    :catch_0
    move-exception v3

    sget-object v3, Lcom/facebook/katana/model/FacebookPushNotification;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error in splitting photo id"

    invoke-static {v3, v4}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v3, v0

    goto :goto_5

    .line 330
    :pswitch_9
    const-string v0, "notif_app_requests"

    invoke-static {v4, v0}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/16 v2, 0xd

    .line 335
    const-string v0, "fb://notifications"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 337
    goto/16 :goto_0

    .line 340
    :pswitch_a
    const-string v0, "notif_place_tags"

    invoke-static {v4, v0}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const/16 v2, 0xe

    .line 345
    const-string v0, "fb://notifications"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 347
    goto/16 :goto_0

    .line 350
    :pswitch_b
    const/16 v2, 0xf

    .line 351
    const-string v0, "fb://codegenerator"

    invoke-static {p1, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move v3, v1

    move v4, v2

    .line 353
    goto/16 :goto_0

    .line 371
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_2

    .line 394
    :cond_9
    sget-object v0, Lcom/facebook/katana/model/FacebookPushNotification;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent is null for notification type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_a
    move-object v2, v0

    goto/16 :goto_1

    :cond_b
    move v3, v1

    move v4, v2

    goto/16 :goto_0

    :cond_c
    move v3, v1

    goto/16 :goto_0

    :cond_d
    move v4, v3

    move v3, v1

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final b()Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v1, "trace_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    const-string v1, "trace_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPushNotification;->mTargetUid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
