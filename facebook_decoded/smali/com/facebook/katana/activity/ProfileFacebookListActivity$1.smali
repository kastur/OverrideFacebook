.class Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;
.super Ljava/lang/Object;
.source "ProfileFacebookListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/ProfileFacebookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_place"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 259
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    iget-wide v2, v0, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/katana/util/LocationUtils;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
