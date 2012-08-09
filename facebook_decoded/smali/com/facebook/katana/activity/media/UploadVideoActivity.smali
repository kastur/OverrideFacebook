.class public Lcom/facebook/katana/activity/media/UploadVideoActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "UploadVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:Lcom/facebook/katana/model/FacebookProfile;

.field private j:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadVideoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h:J

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/UploadVideoActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->i:Lcom/facebook/katana/model/FacebookProfile;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/UploadVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    const-string v0, ""

    move-object v1, v0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 68
    const-string v2, "com.facebook.katana.upload.notification.error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f:Ljava/lang/String;

    .line 82
    const v0, 0x7f030111

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    new-instance v0, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;-><init>(Lcom/facebook/katana/activity/media/UploadVideoActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->j:Lcom/facebook/katana/binding/AppSessionListener;

    .line 117
    :goto_1
    return-void

    .line 71
    :cond_2
    const-string v2, "com.facebook.katana.upload.notification.ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->finish()V

    goto :goto_1

    .line 76
    :cond_3
    const-string v2, "com.facebook.katana.upload.notification.pending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->finish()V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private g()V
    .locals 11

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 190
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v1, v7

    .line 196
    :cond_0
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v2, v7

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h:J

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v10}, Lcom/facebook/katana/service/method/VideoUpload;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->g:Z

    .line 207
    const v0, 0x7f0b03b7

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 209
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->finish()V

    .line 211
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 216
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0b03bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    const-string v0, ""

    move-object v1, v0

    .line 232
    :goto_0
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->i:Lcom/facebook/katana/model/FacebookProfile;

    if-nez v0, :cond_1

    .line 226
    iget-wide v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 227
    const v0, 0x7f0b03b3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 229
    :cond_1
    const v0, 0x7f0b03b4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->i:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_profile_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h:J

    .line 50
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 51
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Landroid/app/Activity;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    if-nez p2, :cond_0

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x8a2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->g()V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->finish()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x7f0802f7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f:Ljava/lang/String;

    .line 149
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->j:Lcom/facebook/katana/binding/AppSessionListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->j:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 123
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 125
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->h()V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 129
    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->finish()V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity;->j:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0
.end method
