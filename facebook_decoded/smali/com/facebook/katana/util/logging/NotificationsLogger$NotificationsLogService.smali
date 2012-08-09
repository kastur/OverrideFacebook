.class public Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;
.super Landroid/app/IntentService;
.source "NotificationsLogger.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "REDIRECT_INTENT"

    sput-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "NotificationsLogService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 57
    const-string v0, "EVENT_TYPE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    .line 58
    const-string v1, "NOTIF_LOG"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    .line 60
    sget-object v3, Lcom/facebook/katana/util/logging/NotificationsLogger$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLEAR_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->CLICK_FROM_TRAY:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/logging/NotificationsLogger;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V

    .line 74
    sget-object v0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationsLogService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
