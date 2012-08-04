.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;
.super Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;
.source "FacewebChromeFragment.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1534
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 1535
    invoke-direct {p0, p2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$StatefulNativeUICallHandler;-><init>(Landroid/os/Handler;)V

    .line 1536
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1683
    return-void
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1660
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1661
    return-void
.end method

.method private a(Lcom/facebook/katana/webview/FacewebPalCall;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const v7, 0x7f0802c0

    const v6, 0x7f0802bd

    .line 1611
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->J:Lcom/facebook/katana/webview/FacewebWebView;

    invoke-virtual {v0}, Lcom/facebook/katana/webview/FacewebWebView;->c()Ljava/lang/String;

    move-result-object v0

    .line 1612
    :goto_0
    const-string v1, "target"

    invoke-interface {p1, v0, v1, v8, v9}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1614
    const-string v3, "type"

    const-string v4, "feed"

    invoke-interface {p1, v0, v3, v4}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-static {v3}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 1616
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1617
    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    cmp-long v4, v1, v8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v4}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v4

    iget-wide v4, v4, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_3

    .line 1624
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    const v1, 0x7f0b02fe

    invoke-direct {p0, v7, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(II)V

    .line 1628
    const-string v1, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "target"

    invoke-interface {p1, v0, v1}, Lcom/facebook/katana/webview/FacewebPalCall;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->b()V

    .line 1632
    const v0, 0x7f0b0300

    invoke-direct {p0, v6, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(II)V

    .line 1633
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a()V

    .line 1651
    :goto_1
    return-void

    .line 1611
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1634
    :cond_3
    const-string v0, "feed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "friendlist"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1636
    :cond_4
    const v0, 0x7f0b02b7

    invoke-direct {p0, v7, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(II)V

    .line 1637
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->b()V

    .line 1639
    const v0, 0x7f0b02ff

    invoke-direct {p0, v6, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(II)V

    .line 1640
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a()V

    .line 1642
    const v0, 0x7f0802c3

    const v1, 0x7f0b03de

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(II)V

    .line 1644
    invoke-direct {p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->c()V

    goto :goto_1

    .line 1647
    :cond_5
    const-string v0, "ShowPublisherHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown publisher type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1649
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->G()Lcom/facebook/katana/activity/BaseFacebookActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/BaseFacebookActivity;Lcom/facebook/katana/webview/FacebookWebView;)V

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1690
    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1703
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1707
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1708
    new-instance v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;-><init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1724
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->i(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->i(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.katana.SHARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 1728
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 1541
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0, v6}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Z)Z

    .line 1543
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "callback"

    invoke-interface {v1, v2, v3}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-virtual {p2}, Lcom/facebook/katana/webview/FacebookWebView;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "target"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/facebook/katana/webview/FacewebPalCall;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;J)J

    .line 1546
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;J)J

    .line 1548
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    const-string v0, "ShowPublisherHandler"

    const-string v1, "invalid session info"

    invoke-static {v0, v1, v6}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1572
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    const-string v0, "composer_share_location"

    invoke-static {p1, v0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1556
    const-string v0, "composer_tour_completed"

    invoke-static {p1, v0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1560
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;)Lcom/facebook/katana/service/method/AudienceSettings;

    .line 1565
    const v0, 0x493e0

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(I)Landroid/location/Location;

    move-result-object v1

    .line 1568
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1569
    instance-of v2, v0, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    if-eqz v2, :cond_0

    .line 1570
    check-cast v0, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-interface {v0, v1}, Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;->a(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookWebView;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->t()Landroid/view/View;

    move-result-object v0

    .line 1578
    if-nez v0, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1584
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->g(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1585
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1586
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1589
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1590
    const v3, 0x7f0300ee

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1591
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->c:Lcom/facebook/katana/webview/FacewebPalCall;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a(Lcom/facebook/katana/webview/FacewebPalCall;)V

    goto :goto_0

    .line 1599
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1600
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method
