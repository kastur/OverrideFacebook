.class public Lcom/facebook/katana/UserInfoActivity;
.super Lcom/facebook/katana/ProfileInfoActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# instance fields
.field private n:Lcom/facebook/katana/model/FacebookUserFull;

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/katana/ProfileInfoActivity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/UserInfoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/facebook/katana/UserInfoActivity;->o:J

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/model/FacebookUserFull;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/UserInfoActivity;->a(Lcom/facebook/katana/model/FacebookUserFull;Z)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookUserFull;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    check-cast v0, Lcom/facebook/katana/UserInfoAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/UserInfoAdapter;->a(Lcom/facebook/katana/model/FacebookUserFull;Z)V

    .line 232
    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    .line 235
    if-eqz p2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const v0, 0x7f0802ae

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 243
    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/UserInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/UserInfoActivity$2;-><init>(Lcom/facebook/katana/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/UserInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->q()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 257
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v4, p0, Lcom/facebook/katana/UserInfoActivity;->m:Z

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity;->a(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f0300e5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->setContentView(I)V

    .line 101
    invoke-static {p0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 104
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.katana.profile.id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/UserInfoActivity;->o:J

    .line 112
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->j()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->h()V

    .line 116
    new-instance v0, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;

    invoke-direct {v0, p0, v5}, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;-><init>(Lcom/facebook/katana/UserInfoActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 119
    new-instance v0, Lcom/facebook/katana/UserInfoAdapter;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.katana.profile.show_photo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.facebook.katana.profile.is.limited"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/UserInfoAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;ZZ)V

    iput-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    .line 124
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-direct {p0}, Lcom/facebook/katana/UserInfoActivity;->k()V

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUserFull;->mUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0, p0}, Lcom/facebook/katana/UserInfoActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 267
    const/4 v0, 0x1

    const v1, 0x7f0b02fb

    const v2, 0x7f020228

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/UserInfoActivity;->a(III)V

    .line 269
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUserFull;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/UserInfoActivity;->b(IZ)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    iget-wide v0, p0, Lcom/facebook/katana/UserInfoActivity;->o:J

    new-instance v2, Lcom/facebook/katana/UserInfoActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/UserInfoActivity$1;-><init>(Lcom/facebook/katana/UserInfoActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/dialog/Dialogs;->a(Landroid/content/Context;JLcom/facebook/katana/dialog/Dialogs$AddFriendListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 166
    const v1, 0x7f0b02cc

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UserInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x0

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    invoke-virtual {p0, p3}, Lcom/facebook/katana/UserInfoActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileInfoAdapter;->a(I)Lcom/facebook/katana/ProfileInfoAdapter$Item;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUserFull;->mUrl:Ljava/lang/String;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 195
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel"

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/facebook/katana/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const v0, 0x7f0b02d3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :pswitch_4
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->e()J

    move-result-wide v0

    invoke-static {p0, v0, v1, v4}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/facebook/katana/ProfileInfoActivity;->onResume()V

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->n:Lcom/facebook/katana/model/FacebookUserFull;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/UserInfoActivity;->o:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->p()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->b(Z)V

    .line 145
    :cond_0
    return-void
.end method
