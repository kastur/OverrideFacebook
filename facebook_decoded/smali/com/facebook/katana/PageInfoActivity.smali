.class public Lcom/facebook/katana/PageInfoActivity;
.super Lcom/facebook/katana/ProfileInfoActivity;
.source "PageInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# instance fields
.field private n:J

.field private o:Lcom/facebook/katana/model/FacebookPageFull;

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/katana/ProfileInfoActivity;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/PageInfoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->n:J

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/katana/PageInfoActivity;Lcom/facebook/katana/model/FacebookPageFull;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/model/FacebookPageFull;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPageFull;)V
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    check-cast v0, Lcom/facebook/katana/PageInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/PageInfoAdapter;->a(Lcom/facebook/katana/model/FacebookPageFull;)V

    .line 253
    iput-object p1, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/PageInfoActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/facebook/katana/PageInfoActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/PageInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->q()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/PageInfoActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/facebook/katana/PageInfoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    return-wide v0
.end method

.method static synthetic e(Lcom/facebook/katana/PageInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/PageInfoActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    return-wide v0
.end method

.method static synthetic g(Lcom/facebook/katana/PageInfoActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/PageInfoActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/katana/PageInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->p()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 261
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput-boolean v4, p0, Lcom/facebook/katana/PageInfoActivity;->m:Z

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity;->a(Landroid/os/Bundle;)V

    .line 125
    const v0, 0x7f0300c3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.katana.profile.id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->n:J

    .line 129
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 133
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->n:J

    iput-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    .line 136
    :cond_1
    invoke-static {p0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->j()V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->h()V

    .line 151
    new-instance v0, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/PageInfoActivity$PageInfoAppSessionListener;-><init>(Lcom/facebook/katana/PageInfoActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 154
    new-instance v0, Lcom/facebook/katana/PageInfoAdapter;

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.facebook.katana.profile.show_photo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/PageInfoAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Z)V

    iput-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    .line 157
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-direct {p0}, Lcom/facebook/katana/PageInfoActivity;->k()V

    .line 163
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    return-void

    .line 143
    :cond_2
    iget-wide v0, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetPageFanStatus;->a(Landroid/content/Context;J)Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0, p0}, Lcom/facebook/katana/PageInfoActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 269
    const/4 v0, 0x2

    const v1, 0x7f0b02fb

    const v2, 0x7f020228

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/PageInfoActivity;->a(III)V

    .line 271
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 276
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/PageInfoActivity;->b(IZ)V

    .line 277
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/facebook/katana/ProfileInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 185
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 187
    const v1, 0x7f0b0281

    invoke-virtual {p0, v1}, Lcom/facebook/katana/PageInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
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
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->e:Lcom/facebook/katana/ProfileInfoAdapter;

    invoke-virtual {p0, p3}, Lcom/facebook/katana/PageInfoActivity;->f(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileInfoAdapter;->a(I)Lcom/facebook/katana/ProfileInfoAdapter$Item;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mUrl:Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 215
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    const-string v3, "tel"

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileInfoAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v1}, Lcom/facebook/katana/PageInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Lcom/facebook/katana/ProfileInfoActivity;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->o:Lcom/facebook/katana/model/FacebookPageFull;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/katana/PageInfoActivity;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/model/FacebookPageFull;

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetPages;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/facebook/katana/PageInfoActivity;->p()V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->b(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/facebook/katana/PageInfoActivity;->p:Z

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/facebook/katana/service/method/PagesAddFan;

    iget-object v1, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/PageInfoActivity;->i:J

    move-object v1, p0

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PagesAddFan;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 238
    iget-object v3, p0, Lcom/facebook/katana/PageInfoActivity;->g:Lcom/facebook/katana/binding/AppSession;

    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/PageInfoActivity;->q:Ljava/lang/String;

    .line 240
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/PageInfoActivity;->a(ILjava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PageInfoActivity;->b(Z)V

    .line 243
    :cond_0
    return-void
.end method
