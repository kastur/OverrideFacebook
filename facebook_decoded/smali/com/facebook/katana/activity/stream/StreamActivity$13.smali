.class Lcom/facebook/katana/activity/stream/StreamActivity$13;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$13;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$13;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$13;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, v1, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity$13;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v3, v3, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/util/LocationUtils;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    .line 1595
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$13;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
