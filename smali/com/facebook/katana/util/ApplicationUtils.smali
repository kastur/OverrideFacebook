.class public final Lcom/facebook/katana/util/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 149
    const-string v0, "fb://feed"

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IJLcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-static {p0, p2, p3, p4}, Lcom/facebook/katana/util/ApplicationUtils;->b(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-static {p0, p2, p3}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    const-string v0, ""

    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/facebook/katana/util/ApplicationUtils$1;

    invoke-direct {v1, v0, p0}, Lcom/facebook/katana/util/ApplicationUtils$1;-><init>(Landroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 85
    invoke-static {p0, p1, p2, v1}, Lcom/facebook/katana/service/method/FqlGetPlaceById;->a(Landroid/content/Context;JLcom/facebook/katana/binding/AppSessionListener$GetObjectListener;)Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://profile/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    if-eqz p3, :cond_0

    .line 36
    const-string v1, "extra_user_display_name"

    iget-object v2, p3, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "extra_image_url"

    iget-object v2, p3, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "can_post"

    iget-boolean v2, p3, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Ljava/lang/Integer;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 110
    :cond_1
    const-string v3, "fb://place/fw?pid=%d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-wide v5, v2, Lcom/facebook/katana/model/FacebookPage;->mPageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 112
    const-string v2, "extra_place"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-static {p0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static b(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://page/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    if-eqz p3, :cond_0

    .line 51
    const-string v1, "extra_user_display_name"

    iget-object v2, p3, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "extra_image_url"

    iget-object v2, p3, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
