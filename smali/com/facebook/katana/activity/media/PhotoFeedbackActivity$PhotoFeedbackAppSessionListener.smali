.class Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotoFeedbackActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f02022f

    .line 234
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->d(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 238
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 239
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v2, p2}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Lcom/facebook/katana/model/FacebookPhoto;)Lcom/facebook/katana/model/FacebookPhoto;

    .line 244
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    if-nez v1, :cond_2

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v1

    .line 250
    if-nez v1, :cond_3

    .line 251
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 256
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cannot decode downloaded bitmap"

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPhotoComment;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->d(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v2, 0x7f0b029f

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->removeDialog(I)V

    .line 205
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v2, 0x7f0800f0

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 208
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p5, v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a(Lcom/facebook/katana/model/FacebookPhotoComment;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoComment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->d(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Z)V

    .line 139
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a(Ljava/util/List;)V

    .line 141
    if-eqz p6, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v1, 0x7f0800ef

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "photo_feedback_focus_comment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v2, 0x7f0b02a2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 271
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 277
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Lcom/facebook/katana/model/FacebookPhoto;)Lcom/facebook/katana/model/FacebookPhoto;

    .line 113
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->c(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v4}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v6}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/model/FacebookPhoto;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h()V

    .line 124
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 163
    const v2, 0x7f02017c

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 164
    new-instance v2, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener$1;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->c(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Z)Z

    .line 173
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 174
    return-void
.end method

.method public final g(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 182
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 184
    iget-object v4, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Z)Z

    .line 185
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 187
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 188
    return-void

    :cond_2
    move v1, v3

    .line 184
    goto :goto_0
.end method
