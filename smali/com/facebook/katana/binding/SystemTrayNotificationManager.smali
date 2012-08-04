.class public Lcom/facebook/katana/binding/SystemTrayNotificationManager;
.super Ljava/lang/Object;
.source "SystemTrayNotificationManager.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/provider/VaultImageProviderRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    .line 86
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/app/Notification;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 369
    const/4 v0, 0x0

    .line 370
    if-eqz p2, :cond_0

    .line 371
    const/high16 v0, 0x800

    invoke-static {p0, v4, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 375
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p4, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, p1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 381
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 383
    if-eqz p3, :cond_1

    .line 385
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 394
    :goto_0
    return-object v1

    .line 389
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/vault/VaultService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    const-string v2, "job"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 415
    .line 416
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/VaultImageProviderRow;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 423
    :cond_0
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 424
    if-lez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    :goto_2
    const v4, 0x7f02025e

    invoke-static {p0, v3, v0, v2, v4}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/app/Notification;

    move-result-object v3

    .line 439
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 444
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 448
    if-lez v1, :cond_2

    .line 449
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000a

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 452
    const v3, 0x7f020258

    invoke-static {p0, v1, v0, v2, v3}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/app/Notification;

    move-result-object v1

    .line 455
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 458
    :cond_2
    return-void

    .line 434
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method protected static a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 532
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 533
    if-eqz v0, :cond_0

    .line 535
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 538
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/support/v4/app/NotificationCompat$Builder;Landroid/content/Intent;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    const-string v1, "use_led"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const v1, -0xffff01

    const/16 v2, 0x1f4

    const/16 v3, 0x7d0

    invoke-virtual {p2, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->a(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    :cond_0
    invoke-virtual {p2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 123
    invoke-static {p0, p4, p3}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 125
    const/high16 v3, 0x1000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    const-string v1, "ringtone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 132
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 136
    :cond_1
    const-string v1, "vibrate"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->b(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    :cond_2
    invoke-static {p0, p4}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 144
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    :cond_3
    sget-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->ADD_TO_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-static {p0, p4, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V

    .line 150
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 152
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.upload.notification.pending."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 194
    new-instance v2, Landroid/app/Notification;

    const v0, 0x7f02025c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v6, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 196
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, p4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 202
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I

    move-result v0

    .line 210
    :goto_0
    add-int/lit8 v7, v0, 0x1

    .line 211
    sget-object v9, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    add-int/lit8 v1, p1, 0x64

    move-object v4, p2

    move-object v5, p3

    move v6, v3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;-><init>(ILandroid/app/Notification;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 219
    invoke-virtual {v0, p0, v7}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;I)V

    goto :goto_1

    .line 221
    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/PendingUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.upload.notification.pending."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v1, "extra_photo_is_scaled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    if-eqz p2, :cond_0

    .line 172
    const-string v1, "extra_album_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_0
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    invoke-static {p0, p1, p3, p4, v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 465
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p1}, Lcom/facebook/katana/provider/VaultImageProviderRow;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 471
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 477
    :cond_0
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0009

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/media/MediaPickerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    const v3, 0x7f02025c

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/app/Notification;

    move-result-object v1

    .line 484
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 487
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/provider/VaultImageProviderRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 405
    sget-object v2, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 409
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 411
    return-void
.end method

.method public static a(Lcom/facebook/katana/provider/VaultImageProviderRow;)V
    .locals 2
    .parameter

    .prologue
    .line 492
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/provider/VaultImageProviderRow;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 498
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    return-void
.end method

.method public static a(Landroid/content/Context;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p0, p2}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b(Landroid/content/Context;I)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v7, 0xc8

    const/4 v3, 0x0

    .line 319
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 320
    if-eqz v0, :cond_4

    .line 321
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 325
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 326
    if-ne p2, v7, :cond_1

    .line 327
    const v1, 0x7f020258

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 332
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v5, "com.facebook.katana.clear_notification"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v5, "type"

    const/16 v6, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    if-ne p2, v7, :cond_2

    .line 344
    const-string v5, "com.facebook.katana.upload.notification.ok"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :goto_1
    const-string v5, "android.intent.extra.STREAM"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 349
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const/high16 v5, 0x1400

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 353
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    :cond_0
    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 357
    if-ne p2, v7, :cond_3

    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v0, p0, v4, v1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 362
    :goto_3
    return v2

    .line 329
    :cond_1
    const v1, 0x1080078

    iput v1, v4, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 346
    :cond_2
    const-string v5, "com.facebook.katana.upload.notification.error"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 357
    goto :goto_2

    :cond_4
    move v2, v3

    .line 362
    goto :goto_3
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f020258

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 258
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 259
    if-eqz v0, :cond_6

    .line 260
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    if-eqz p5, :cond_1

    move v2, v3

    .line 261
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 264
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 265
    if-eqz v2, :cond_2

    .line 266
    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 274
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    const-string v6, "com.facebook.katana.clear_notification"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v6, "type"

    const/16 v7, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 281
    new-instance v6, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {v6, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "extra_album_id"

    invoke-virtual {v6, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    if-eqz v2, :cond_4

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.katana.upload.notification.ok"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v1, "extra_photo_id"

    invoke-virtual {v6, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const/4 v1, 0x2

    .line 301
    :goto_2
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    const-string v2, "extra_photo_is_scaled"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const/high16 v2, 0x1400

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :cond_0
    invoke-static {p0, v4, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 310
    invoke-virtual {v0, p0, v5, v1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 313
    :goto_3
    return v3

    :cond_1
    move v2, v4

    .line 260
    goto/16 :goto_0

    .line 267
    :cond_2
    sget-object v1, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->CANCELED:Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 268
    iput v6, v5, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 270
    :cond_3
    const v1, 0x1080078

    iput v1, v5, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 291
    :cond_4
    sget-object v1, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->CANCELED:Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/PendingUploadActivity$UploadStatus;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 293
    const-string v1, "com.facebook.katana.upload_notification_canceled"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const/4 v1, 0x3

    goto :goto_2

    .line 297
    :cond_5
    const-string v1, "com.facebook.katana.upload.notification.error"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v1, v3

    .line 299
    goto :goto_2

    :cond_6
    move v3, v4

    .line 313
    goto :goto_3
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 503
    const-string v0, "vault"

    const-string v1, "clearing vault notifications map"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 507
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 509
    return-void
.end method

.method protected static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 520
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 521
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    return-void
.end method

.method protected static d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 546
    sget-object v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 547
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;

    .line 551
    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 554
    :cond_1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 556
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 559
    :cond_2
    return-void
.end method
