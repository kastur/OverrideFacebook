.class public Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;
.super Ljava/lang/Object;
.source "SystemTrayNotificationManager.java"


# instance fields
.field private final a:I

.field private b:I

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/Notification;

.field private e:I

.field private final f:I

.field private g:I


# direct methods
.method public constructor <init>(ILandroid/app/Notification;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p1, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a:I

    .line 602
    iput v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b:I

    .line 603
    iput-object p4, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    .line 604
    iput-object p2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    .line 605
    iput v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->e:I

    .line 607
    iput p7, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->f:I

    .line 608
    iput p8, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    .line 609
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I
    .locals 1
    .parameter

    .prologue
    .line 570
    iget v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0800be

    const v6, 0x7f0b03aa

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 652
    iget v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b:I

    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_0
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a:I

    iget-object v2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 718
    return-void

    .line 654
    :pswitch_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0300ed

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 656
    const v1, 0x7f0802b7

    const v2, 0x7f02025c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 657
    iget-object v1, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    const v1, 0x7f0b03ab

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 664
    :goto_1
    const v1, 0x7f0802b8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 665
    const v1, 0x7f0802b9

    const/16 v2, 0x64

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 666
    iget-object v1, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 661
    :cond_0
    const v1, 0x7f0b03ac

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 671
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03a8

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 678
    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03a9

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 685
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03bc

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 693
    :goto_3
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03bd

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_3

    .line 700
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 701
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03a6

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 707
    :goto_4
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    const v1, 0x7f0b03a7

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_4

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;)I
    .locals 1
    .parameter

    .prologue
    .line 570
    iget v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b:I

    return v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 618
    iput p2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->g:I

    .line 619
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;)V

    .line 620
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    iput-object p2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->d:Landroid/app/Notification;

    .line 642
    iput p3, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->b:I

    .line 643
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;)V

    .line 644
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 629
    iput p2, p0, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->e:I

    .line 630
    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/SystemTrayNotificationManager$MyNotification;->a(Landroid/content/Context;)V

    .line 631
    return-void
.end method
