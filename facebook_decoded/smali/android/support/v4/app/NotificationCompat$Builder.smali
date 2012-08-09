.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    .line 101
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 106
    return-void
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 373
    if-eqz p2, :cond_0

    .line 374
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->a()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->a(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 126
    return-object p0
.end method

.method public final a(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const v3, -0xffff01

    iput v3, v0, Landroid/app/Notification;->ledARGB:I

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const/16 v3, 0x1f4

    iput v3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 311
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const/16 v3, 0x7d0

    iput v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 312
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz v0, :cond_0

    move v0, v1

    .line 313
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int v0, v4, v1

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 315
    return-object p0

    :cond_0
    move v0, v2

    .line 312
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1
.end method

.method public final a(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 114
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->d:Landroid/app/PendingIntent;

    .line 209
    return-object p0
.end method

.method public final a(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 288
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 289
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->b:Ljava/lang/CharSequence;

    .line 150
    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter

    .prologue
    .line 350
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    .line 351
    return-object p0
.end method

.method public final b(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 366
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 221
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    .line 158
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->e:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 249
    return-object p0
.end method
