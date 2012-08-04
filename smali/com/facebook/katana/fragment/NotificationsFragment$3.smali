.class Lcom/facebook/katana/fragment/NotificationsFragment$3;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 327
    const/4 v3, 0x1

    .line 328
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->b(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/activity/notifications/NotificationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/notifications/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 329
    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 330
    const-string v0, "object_type"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    const-string v0, "object_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 334
    const-string v0, "href"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v0, "join_data_string"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v2}, Lcom/facebook/katana/model/FacebookNotification;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 340
    const-string v0, "is_read"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    const/4 v0, 0x1

    .line 343
    :goto_0
    iget-object v8, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v8}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v5, v6, v1, v2, v8}, Lcom/facebook/katana/model/FacebookNotification;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 346
    if-nez v2, :cond_2

    .line 349
    invoke-static {v1}, Lcom/facebook/katana/Constants$URL;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string v2, "fb://faceweb/f?href=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Lcom/facebook/katana/FBLinks;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    .line 368
    :goto_1
    iget-object v3, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v3}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 369
    iget-object v3, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v3, v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Landroid/content/Intent;)V

    .line 371
    new-instance v1, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    invoke-direct {v1}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;-><init>()V

    const-string v3, "notif_id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(J)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->c(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->d(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a(Z)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b(Z)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/util/logging/NotificationsLogger$Event;->NOTIFICATION_CLICK:Lcom/facebook/katana/util/logging/NotificationsLogger$Event;

    invoke-static {v1, v0, v2}, Lcom/facebook/katana/util/logging/NotificationsLogger;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;Lcom/facebook/katana/util/logging/NotificationsLogger$Event;)V

    .line 385
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-string v2, "notif_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 389
    iget-object v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v1}, Lcom/facebook/katana/fragment/NotificationsFragment;->e(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/fragment/NotificationsFragment$3;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/fragment/NotificationsFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;[J)V

    .line 390
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    move v2, v3

    goto :goto_1
.end method
