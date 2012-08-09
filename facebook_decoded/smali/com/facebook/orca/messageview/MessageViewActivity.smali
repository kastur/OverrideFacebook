.class public Lcom/facebook/orca/messageview/MessageViewActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "MessageViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/ExportMenuToFbHostActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field private B:Lcom/facebook/orca/common/async/Deferred;

.field private e:Lcom/facebook/orca/cache/DataCache;

.field private f:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private g:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private i:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private j:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private m:Lcom/facebook/orca/threads/ThreadSummary;

.field private n:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private s:Lcom/facebook/orca/maps/MapClickableImageView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/facebook/orca/share/ShareView;

.field private v:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

.field private w:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

.field private x:Lcom/facebook/orca/messageview/MessageReaderListView;

.field private y:Ljava/lang/String;

.field private z:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/location/Coordinates;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    .line 240
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$2;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 257
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->f:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/messageview/MessageViewActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/orca/messageview/MessageViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/messageview/MessageViewActivity;)Lcom/facebook/orca/threads/Message;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "orca:MessageViewActivity"

    const-string v1, "Called registerNotificationReceiver twice."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    const-string v1, "com.facebook.orca.ACTION_DELETED_MESSAGES_FOR_UI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$3;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    iput-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    .line 305
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->A:Landroid/content/BroadcastReceiver;

    .line 313
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->B:Lcom/facebook/orca/common/async/Deferred;

    .line 320
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fb://profile/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    invoke-static {p0, v2}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0, v2}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://m.facebook.com/profile.php?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v0, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;

    sget v1, Lcom/facebook/orca/R$id;->delete:I

    sget v2, Lcom/facebook/orca/R$string;->menu_delete:I

    sget v3, Lcom/facebook/orca/R$drawable;->orca_ic_menu_delete:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/activity/ExportMenuToFbHostActivity$CustomFbHostMenuItem;-><init>(IIIZLjava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-object v6
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 107
    sget v0, Lcom/facebook/orca/R$layout;->orca_message_view:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 110
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->e:Lcom/facebook/orca/cache/DataCache;

    .line 111
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->f:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 112
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->g:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 113
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 114
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->i:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 115
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->j:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 116
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->l:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 117
    const-class v0, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->k:Ljavax/inject/Provider;

    .line 120
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 121
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->n:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 122
    sget v0, Lcom/facebook/orca/R$id;->message_user_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/facebook/orca/R$id;->message_date:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Landroid/widget/TextView;

    .line 124
    sget v0, Lcom/facebook/orca/R$id;->message_via:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/facebook/orca/R$id;->message_user_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 126
    sget v0, Lcom/facebook/orca/R$id;->message_map_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/maps/MapClickableImageView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/maps/MapClickableImageView;

    .line 127
    sget v0, Lcom/facebook/orca/R$id;->message_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/facebook/orca/R$id;->message_share:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/share/ShareView;

    .line 129
    sget v0, Lcom/facebook/orca/R$id;->message_image_attachments:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    .line 130
    sget v0, Lcom/facebook/orca/R$id;->message_other_attachments:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    .line 131
    sget v0, Lcom/facebook/orca/R$id;->message_reader_list:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageReaderListView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->x:Lcom/facebook/orca/messageview/MessageReaderListView;

    .line 133
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 136
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 137
    const-string v0, "thread_id"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->e:Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    .line 139
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->finish()V

    .line 233
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;

    invoke-direct {v0}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;-><init>()V

    .line 146
    const-string v3, "readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    const-string v3, "readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Ljava/util/List;)V

    .line 151
    :cond_2
    const-string v3, "other_readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    const-string v3, "other_readers"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->b(Ljava/util/List;)V

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Lcom/facebook/orca/threads/Message;)V

    .line 157
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 158
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->x:Lcom/facebook/orca/messageview/MessageReaderListView;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/messageview/MessageReaderListView;->setParameters(Lcom/facebook/orca/messageview/MessageReaderListView$Parameters;)V

    .line 160
    const-class v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    .line 161
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->n:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V

    .line 162
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_6

    .line 170
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserKey(Lcom/facebook/orca/users/UserKey;)V

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 179
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$1;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->i:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->j:Lcom/facebook/orca/threads/ThreadSourceUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v0

    .line 192
    if-lez v0, :cond_7

    .line 193
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 197
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->j:Lcom/facebook/orca/threads/ThreadSourceUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSourceUtil;->b(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(Lcom/facebook/orca/location/Coordinates;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/maps/MapClickableImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/maps/MapClickableImageView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/maps/MapClickableImageView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->f:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 208
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 209
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 210
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->g:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_8

    .line 214
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/share/ShareView;->setShare(Lcom/facebook/orca/share/Share;)V

    .line 220
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setVisibility(I)V

    .line 227
    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->h:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-static {v0}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->e(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v4}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    goto/16 :goto_1

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Landroid/widget/TextView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_message_type_chat:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    .line 217
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    goto :goto_3

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setVisibility(I)V

    goto :goto_4

    .line 231
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final b_(I)V
    .locals 3
    .parameter

    .prologue
    .line 372
    sget v0, Lcom/facebook/orca/R$id;->delete:I

    if-ne p1, v0, :cond_0

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "message_ids"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    :cond_0
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "message"

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 340
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 341
    sget v1, Lcom/facebook/orca/R$menu;->message_view_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onDestroy()V

    .line 276
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h()V

    .line 277
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->i()V

    .line 278
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/facebook/orca/R$id;->delete:I

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->l:Lcom/facebook/orca/analytics/AnalyticsLogger;

    new-instance v1, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v2, "click"

    invoke-direct {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "opt_menu_item"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/mutators/DeleteMessagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    const-string v1, "thread_id"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "message_ids"

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->z:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStart()V

    .line 263
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->g()V

    .line 264
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onStop()V

    .line 269
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->h()V

    .line 270
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->i()V

    .line 271
    return-void
.end method
