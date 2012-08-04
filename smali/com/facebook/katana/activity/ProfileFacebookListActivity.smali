.class public Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "ProfileFacebookListActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/FatTitleHeader;


# instance fields
.field protected g:Lcom/facebook/katana/binding/AppSession;

.field protected h:Lcom/facebook/katana/binding/AppSessionListener;

.field protected i:J

.field protected j:I

.field protected k:Lcom/facebook/katana/model/FacebookProfile;

.field protected m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 66
    return-void
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 128
    invoke-static {p0, v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 129
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 131
    iget-boolean v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->m:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_id"

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    .line 135
    iput v8, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    .line 136
    iget-wide v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    if-eq v0, v4, :cond_2

    .line 141
    iput v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    .line 142
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_user_display_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_image_url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "can_post"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    .line 165
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->l:Ljava/util/List;

    const v1, 0x7f030032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_1
    new-instance v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;-><init>(Lcom/facebook/katana/activity/ProfileFacebookListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 173
    :cond_1
    return-void

    .line 154
    :cond_2
    iget-wide v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/model/FacebookUserPersistent;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookUserPersistent;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Lcom/facebook/katana/model/FacebookProfile;

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/facebook/katana/model/FacebookProfile;

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->l:Ljava/util/List;

    const v1, 0x7f030033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public h()V
    .locals 2

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->m:Z

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final i()V
    .locals 9

    .prologue
    const/16 v5, 0x4b

    const/4 v8, 0x2

    .line 226
    iget-boolean v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_1
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 241
    const/4 v0, 0x0

    .line 242
    iget v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    if-ne v1, v8, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_place"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/facebook/katana/model/FacebookPlace;

    .line 246
    iget-wide v0, v2, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    const/16 v4, 0xe

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/util/LocationUtils;->a(DDIII)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity$1;-><init>(Lcom/facebook/katana/activity/ProfileFacebookListActivity;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    iget-object v3, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    :cond_3
    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    :goto_2
    instance-of v0, v7, Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/vnd.facebook.profile"

    aput-object v5, v3, v4

    invoke-static {v7, v0, v1, v2, v3}, Lcom/facebook/katana/platform/PlatformFastTrack;->a(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :cond_4
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 283
    :cond_5
    iget v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    if-ne v0, v8, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 286
    :cond_6
    iget v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 287
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 290
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 202
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->m:Z

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mCanPostKnown:Z

    if-nez v0, :cond_3

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 193
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 194
    return-void

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i()V

    goto :goto_0
.end method

.method protected u()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
