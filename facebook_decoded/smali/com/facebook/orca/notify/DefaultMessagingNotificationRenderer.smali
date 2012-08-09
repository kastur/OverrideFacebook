.class public Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;
.super Ljava/lang/Object;
.source "DefaultMessagingNotificationRenderer.java"

# interfaces
.implements Lcom/facebook/orca/notify/MessagingNotificationRenderer;


# static fields
.field private static final i:[J

.field private static final j:[J


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Vibrator;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

.field private final e:Lcom/facebook/orca/intents/MessagingIntentUris;

.field private final f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->i:[J

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->j:[J

    return-void

    .line 81
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Vibrator;Landroid/app/NotificationManager;Lcom/facebook/orca/notify/MessagingNotificationPreferences;Lcom/facebook/orca/intents/MessagingIntentUris;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/cache/DataCache;Ljavax/inject/Provider;Lcom/facebook/orca/photos/tiles/UserTileViewLogic;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Vibrator;",
            "Landroid/app/NotificationManager;",
            "Lcom/facebook/orca/notify/MessagingNotificationPreferences;",
            "Lcom/facebook/orca/intents/MessagingIntentUris;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            "Lcom/facebook/orca/cache/DataCache;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageTask;",
            ">;",
            "Lcom/facebook/orca/photos/tiles/UserTileViewLogic;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/os/Vibrator;

    .line 72
    iput-object p3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    .line 73
    iput-object p4, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    .line 74
    iput-object p5, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/intents/MessagingIntentUris;

    .line 75
    iput-object p6, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 76
    iput-object p8, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Ljavax/inject/Provider;

    .line 78
    iput-object p9, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->h:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 79
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ParticipantInfo;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 360
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 380
    :goto_0
    return-object v0

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 370
    const v0, 0x1050006

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 371
    const v3, 0x1050005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 377
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->h:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/UserKey;II)Lcom/facebook/orca/images/FetchImageParams;

    move-result-object v1

    .line 378
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageTask;

    .line 379
    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/FetchImageTask;->a(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 380
    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageTask;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1
.end method

.method private a(Landroid/app/Notification;)V
    .locals 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->b()Z

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->a()Z

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->c()Z

    move-result v2

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b()Landroid/net/Uri;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_3

    .line 263
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 268
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 271
    :cond_1
    if-eqz v2, :cond_2

    .line 272
    const v0, -0xff0100

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 273
    const/16 v0, 0x12c

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    .line 274
    const/16 v0, 0x3e8

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    .line 275
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 277
    :cond_2
    return-void

    .line 265
    :cond_3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 269
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v2}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v2

    .line 137
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, v2, p1, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 138
    invoke-direct {p0, v3}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Landroid/app/Notification;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/intents/MessagingIntentUris;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const-string v0, "from_notification"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 148
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 155
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p4, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 167
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e(Ljava/lang/String;)I

    move-result v2

    .line 179
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/orca/R$layout;->notification_custom:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 184
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 187
    if-eqz v0, :cond_1

    .line 188
    sget v4, Lcom/facebook/orca/R$id;->image:I

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 205
    :goto_1
    sget v0, Lcom/facebook/orca/R$id;->title:I

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    sget v0, Lcom/facebook/orca/R$id;->text:I

    invoke-virtual {v3, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    if-ltz v2, :cond_4

    .line 209
    sget v0, Lcom/facebook/orca/R$id;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    :goto_2
    iput-object v3, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 215
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v0

    .line 191
    sget v4, Lcom/facebook/orca/R$id;->image:I

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v4}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v4

    .line 197
    sget v5, Lcom/facebook/orca/R$id;->icon:I

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 198
    if-eqz v0, :cond_3

    .line 199
    sget v4, Lcom/facebook/orca/R$id;->image:I

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 201
    :cond_3
    sget v0, Lcom/facebook/orca/R$id;->image:I

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 211
    :cond_4
    sget v0, Lcom/facebook/orca/R$id;->count:I

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method private b()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v1}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->d()Landroid/net/Uri;

    move-result-object v1

    .line 287
    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 293
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 295
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 300
    :cond_3
    const/4 v2, 0x0

    .line 302
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 303
    const-string v4, "r"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 304
    if-nez v2, :cond_4

    .line 305
    if-eqz v2, :cond_0

    .line 318
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 316
    :cond_4
    if-eqz v2, :cond_5

    .line 318
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_5
    :goto_1
    move-object v0, v1

    .line 321
    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 318
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 311
    :catch_3
    move-exception v1

    if-eqz v0, :cond_0

    .line 318
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    .line 314
    :catch_5
    move-exception v1

    if-eqz v0, :cond_0

    .line 318
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    :catch_6
    move-exception v1

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 318
    :try_start_6
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 321
    :cond_6
    :goto_2
    throw v1

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Landroid/app/Notification;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object p1

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {p3, v1, v0, p1, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 233
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 341
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    .line 342
    sget-object v3, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/prefs/PrefKey;->b(Lcom/facebook/orca/common/util/TypedKey;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->retry_send_heading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 238
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v3}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->e()I

    move-result v3

    .line 239
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 240
    invoke-direct {p0, v4}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Landroid/app/Notification;)V

    .line 242
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->e:Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-interface {v1, p1}, Lcom/facebook/orca/intents/MessagingIntentUris;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 243
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    const/high16 v1, 0x400

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    const-string v1, "from_notification"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/orca/R$string;->app_name:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a:Landroid/content/Context;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 253
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->L:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 351
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 352
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 327
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->f(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 330
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;I)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 331
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 332
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 355
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->f(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->f:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v2, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    const/16 v3, 0x2710

    invoke-virtual {v2, v0, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 126
    invoke-direct {p0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d()V

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 95
    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_ACTIVE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-ne p3, v0, :cond_3

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d:Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-interface {v0}, Lcom/facebook/orca/notify/MessagingNotificationPreferences;->a()Z

    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    sget-object v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;->IN_APP_IDLE:Lcom/facebook/orca/notify/MessagingNotificationRenderer$PresenceLevel;

    if-ne p3, v1, :cond_2

    .line 100
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/os/Vibrator;

    sget-object v2, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->i:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 109
    :cond_1
    :goto_0
    return v0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->b:Landroid/os/Vibrator;

    sget-object v2, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->j:[J

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->d(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)V

    .line 109
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/notify/DefaultMessagingNotificationRenderer;->c:Landroid/app/NotificationManager;

    const/16 v1, 0x2710

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 132
    return-void
.end method
