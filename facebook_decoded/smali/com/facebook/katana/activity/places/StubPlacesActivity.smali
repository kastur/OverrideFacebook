.class public Lcom/facebook/katana/activity/places/StubPlacesActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "StubPlacesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/StubPlacesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    const-string v0, "extra_place"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v1

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v3, "extra_user_id"

    iget-wide v4, v1, Lcom/facebook/katana/model/FacebookPage;->mPageId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 38
    const-string v3, "extra_user_display_name"

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v3, "extra_image_url"

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPage;->mPicSmall:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "extra_user_type"

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v1, "extra_place"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const/high16 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/places/StubPlacesActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/StubPlacesActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "extra_user_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method
