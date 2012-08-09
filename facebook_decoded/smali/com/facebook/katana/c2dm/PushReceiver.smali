.class public Lcom/facebook/katana/c2dm/PushReceiver;
.super Landroid/app/IntentService;
.source "PushReceiver.java"


# static fields
.field public static final a:J

.field private static d:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private b:Lcom/facebook/orca/push/common/PushDeserialization;

.field private c:Lcom/facebook/orca/notify/OrcaNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget-wide v0, Lcom/facebook/orca/common/util/TimeConstants;->d:J

    sput-wide v0, Lcom/facebook/katana/c2dm/PushReceiver;->a:J

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 118
    new-instance v0, Lcom/facebook/katana/c2dm/PushReceiver$1;

    invoke-direct {v0}, Lcom/facebook/katana/c2dm/PushReceiver$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "PushReceiver"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private static declared-synchronized a()V
    .locals 2

    .prologue
    .line 642
    const-class v1, Lcom/facebook/katana/c2dm/PushReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 645
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->f:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    monitor-exit v1

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 600
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->g(Landroid/content/Context;)V

    .line 608
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->e(Landroid/content/Context;)V

    .line 609
    return-void

    .line 603
    :cond_0
    invoke-static {}, Lcom/facebook/katana/util/logging/reliability/PushRegistrationInitialStatusClientEvent;->a()Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->g(Landroid/content/Context;)V

    .line 584
    :try_start_0
    const-class v0, Lcom/facebook/katana/c2dm/PushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/facebook/katana/c2dm/PushReceiver;->a()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 547
    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v2, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 554
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/FacebookPushRegistration$RegistrationListener;)Ljava/lang/String;

    .line 556
    const-string v0, "attempt"

    .line 561
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/logging/reliability/PushServerRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 567
    return-void

    .line 558
    :cond_0
    const-string v0, "invalid_session"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPushNotification;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 475
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 476
    const-string v0, "noti_type"

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "noti_time"

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v0, "receipt_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    const-string v0, "target_uid"

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mTargetUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    const-string v0, "message"

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "unread_count"

    iget v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mUnreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mHref:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "href"

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mHref:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 489
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 490
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 491
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookPushNotification;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 492
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "FB_C2DM"

    const-string v2, "Error in serializing params of push notification"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :goto_1
    return-void

    .line 494
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 496
    const-string v0, "params"

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    sget-object v2, Lcom/facebook/katana/provider/PushNotificationsProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 506
    invoke-static {v0}, Lcom/facebook/katana/provider/PushNotificationsProvider;->a(Landroid/content/ContentResolver;)V

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v2}, Lcom/facebook/orca/push/PushSource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, p2}, Lcom/facebook/katana/util/logging/reliability/PushNotificationActionClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    .line 317
    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 318
    return-void

    .line 311
    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 281
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.katana.intent.RETRY_C2DM_REG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 286
    const-string v0, "service_not_available"

    .line 299
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/logging/reliability/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 305
    return-void

    .line 288
    :cond_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    const-string v0, "FB_C2DM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registration error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "unsafe_error"

    goto :goto_0

    .line 295
    :cond_1
    const-string v0, "safe_error"

    goto :goto_0
.end method

.method private static a(Lcom/facebook/katana/model/FacebookPushNotification;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookPushNotification;->c()Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    .line 513
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v1, p1, v0}, Lcom/facebook/katana/binding/AppSession;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 373
    const-string v0, "FB_C2DM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking Messenger to see if user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is logged in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_0
    new-instance v3, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v0}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 377
    const-string v0, "userId"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.facebook.orca.notify.MessengerLoggedInUserProvider/logged_in_user"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    .line 384
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v2, Lcom/facebook/orca/notify/MessengerLoggedInUserProvider;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 388
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 401
    :cond_0
    :goto_1
    return v6

    :cond_1
    move v0, v6

    .line 385
    goto :goto_0

    .line 388
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    .line 396
    const-string v1, "FB_C2DM"

    const-string v2, "Caught exception checking orca pref"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 388
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 398
    :catch_1
    move-exception v0

    .line 399
    const-string v1, "MESSENGER_LOGGED_IN_USER_PROVIDER"

    const-string v2, "Exception in MessengerLoggedInUserProvider"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;)V

    .line 614
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->f(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 258
    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    const-string v0, ""

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 264
    invoke-static {p1, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v1, "unregistered"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    invoke-static {p1}, Lcom/facebook/katana/c2dm/PushOperationHelper;->b(Landroid/content/Context;)V

    .line 268
    invoke-static {p1}, Lcom/facebook/katana/c2dm/PushReceiver;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 273
    invoke-static {p1}, Lcom/facebook/katana/c2dm/PushReceiver;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    sput-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 131
    :cond_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->d:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 132
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-static {p2}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 324
    invoke-static {p2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 325
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 329
    const-string v3, "msg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "orca_message"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/facebook/katana/c2dm/PushReceiver;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-static {v2, v0}, Lcom/facebook/orca/push/common/PushDeserialization;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 337
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 338
    if-nez v1, :cond_1

    .line 339
    const-string v1, "invalid_session"

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    if-nez v0, :cond_2

    .line 346
    const-string v1, "invalid_payload"

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-direct {p0, v3, v4}, Lcom/facebook/katana/c2dm/PushReceiver;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    const-string v1, "FB_C2DM"

    const-string v2, "User logged into Messenger, eating notification"

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "eaten_messenger"

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/facebook/katana/c2dm/PushReceiver;->c:Lcom/facebook/orca/notify/OrcaNotificationManager;

    sget-object v3, Lcom/facebook/orca/push/PushSource;->C2DM:Lcom/facebook/orca/push/PushSource;

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/push/PushSource;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_1

    const-string v0, "success"

    .line 527
    :goto_0
    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/katana/util/logging/reliability/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 534
    if-eqz v1, :cond_0

    .line 536
    invoke-static {p0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    .line 539
    sget-wide v2, Lcom/facebook/katana/c2dm/PushReceiver;->a:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;J)V

    .line 541
    :cond_0
    return-void

    .line 524
    :cond_1
    const-string v0, "invalid_session"

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    .line 408
    if-nez v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    if-eqz v3, :cond_0

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;J)V

    .line 420
    const/4 v1, 0x0

    .line 422
    :try_start_0
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 423
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 424
    const-class v4, Lcom/facebook/katana/model/FacebookPushNotification;

    invoke-static {v0, v4}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPushNotification;

    .line 429
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPushNotification;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookPushNotification;->mTargetUid:J

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v6, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 435
    :cond_2
    invoke-static {v0, p1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Lcom/facebook/katana/model/FacebookPushNotification;Landroid/content/Context;)V

    .line 442
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 443
    const-string v4, "notif"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPushNotification;->b()Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    move-result-object v2

    sget-object v4, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->MSG:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    if-ne v2, v4, :cond_5

    .line 446
    invoke-direct {p0, p1, v3}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    :cond_3
    :goto_1
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    invoke-static {p1, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPushNotification;)V
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move-object v0, v1

    .line 464
    :goto_2
    if-eqz v0, :cond_0

    .line 465
    const-string v1, "FB_C2DM"

    const-string v2, "Exception parsing push notification"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    const-string v0, "FB_C2DM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in parsing notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7a120

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 448
    :cond_5
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/FacebookPushNotification;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    goto :goto_2

    .line 461
    :catch_1
    move-exception v0

    goto :goto_2

    .line 459
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 572
    const-string v0, "success"

    invoke-static {p0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/reliability/PushC2DMUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 577
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 619
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 620
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 621
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 625
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 626
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;->a(Z)V

    .line 627
    return-void
.end method

.method private static declared-synchronized g(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 631
    const-class v1, Lcom/facebook/katana/c2dm/PushReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 632
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 633
    const/4 v2, 0x1

    const-string v3, "FB_C2DM"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 636
    sput-object v0, Lcom/facebook/katana/c2dm/PushReceiver;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    :cond_0
    monitor-exit v1

    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 106
    invoke-virtual {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 107
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver;->b:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 108
    const-class v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver;->c:Lcom/facebook/orca/notify/OrcaNotificationManager;

    .line 109
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/facebook/katana/c2dm/PushReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 239
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    invoke-direct {p0, v1, p1}, Lcom/facebook/katana/c2dm/PushReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    :goto_0
    invoke-static {}, Lcom/facebook/katana/c2dm/PushReceiver;->a()V

    .line 253
    return-void

    .line 241
    :cond_1
    :try_start_1
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    invoke-direct {p0, v1, p1}, Lcom/facebook/katana/c2dm/PushReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/katana/c2dm/PushReceiver;->a()V

    throw v0

    .line 243
    :cond_2
    :try_start_2
    const-string v2, "com.facebook.katana.intent.RETRY_C2DM_REG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-static {v1}, Lcom/facebook/katana/c2dm/PushOperationHelper;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 245
    :cond_3
    const-string v2, "com.facebook.katana.intent.RETRY_SEND_TOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 247
    invoke-static {v1, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
