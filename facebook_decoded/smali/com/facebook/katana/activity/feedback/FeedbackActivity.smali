.class public Lcom/facebook/katana/activity/feedback/FeedbackActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "FeedbackActivity.java"


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/binding/AppSessionListener;

.field private g:J

.field private h:Lcom/facebook/katana/model/FacebookPost;

.field private i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private m:Lcom/facebook/katana/model/FacebookProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/activity/feedback/FeedbackAdapter;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Lcom/facebook/katana/model/FacebookPost;)Lcom/facebook/katana/model/FacebookPost;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Z)V

    return-void
.end method

.method static synthetic a(ILjava/lang/Exception;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(ILjava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookPost;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 353
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 354
    :goto_0
    const v1, 0x7f0800ef

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 356
    return-void

    .line 353
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static b(ILjava/lang/Exception;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    const/16 v0, 0xc8

    if-ne v0, p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->m:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method

.method private f()V
    .locals 9

    .prologue
    .line 362
    new-instance v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    iget-object v8, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v8, v8, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Lcom/facebook/katana/binding/AppSession;->a(JLjava/lang/String;)Z

    move-result v6

    new-instance v7, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;

    invoke-direct {v7, p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$2;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;ZLcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentsListener;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    .line 381
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookPost$Comments;->canPost:Z

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Z)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Comments;->b()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost$Comments;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g()V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 398
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 401
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 402
    new-instance v1, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$3;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 420
    new-instance v1, Lcom/facebook/katana/activity/feedback/FeedbackActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$4;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 430
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 431
    new-instance v1, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$5;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 447
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->b()V

    .line 841
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 843
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x3e9

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->setContentView(I)V

    .line 106
    invoke-static {p0, v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    const-string v1, "extra_uid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    .line 113
    const-string v1, "extra_post_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "comment_actor"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "comment_actor"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->m:Lcom/facebook/katana/model/FacebookProfile;

    .line 120
    :cond_0
    new-instance v0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 304
    invoke-static {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    .line 305
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-eqz v0, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f()V

    .line 349
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0, v8}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->d(Z)V

    .line 311
    invoke-direct {p0, v9}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->b(Z)V

    .line 339
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;

    iget-wide v6, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v9

    move-object v1, p0

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/activity/feedback/FeedbackActivity$1FqlGetPosts;-><init>(Lcom/facebook/katana/activity/feedback/FeedbackActivity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;J[Ljava/lang/String;)V

    .line 345
    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    move-object v5, p0

    move-object v6, v0

    move v7, v10

    move v8, v10

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 701
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 709
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    .line 710
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 712
    const-string v2, "extra_user_display_name"

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v2, "extra_image_url"

    iget-object v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    const-string v2, "extra_user_type"

    iget v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v2, "can_post"

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 720
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 725
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->mCheckinDetails:Lcom/facebook/katana/model/FacebookCheckinDetails;

    .line 726
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckinDetails;->b()Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v0

    .line 728
    invoke-static {p0, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 739
    :sswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a()Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_0

    .line 742
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 750
    :sswitch_3
    invoke-direct {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g()V

    goto/16 :goto_0

    .line 755
    :sswitch_4
    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    .line 756
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Comment;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    invoke-static {p0, v3, v1, v2, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;IJLcom/facebook/katana/model/FacebookProfile;)V

    goto/16 :goto_0

    .line 762
    :sswitch_5
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    goto/16 :goto_0

    .line 706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 814
    if-nez p2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 819
    :pswitch_0
    if-eqz p3, :cond_0

    .line 820
    const-string v0, "extra_ptf"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->setResult(ILandroid/content/Intent;)V

    .line 822
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->finish()V

    goto :goto_0

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 653
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-nez v0, :cond_0

    move v0, v6

    .line 688
    :goto_0
    return v0

    .line 659
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v0, v6

    .line 688
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 667
    :sswitch_0
    iget-object v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    .line 668
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookPost$Comment;->fromId:J

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Comment;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;IJLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 675
    :sswitch_1
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    .line 676
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v2, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    iget-object v4, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v1

    iget-object v5, v1, Lcom/facebook/katana/model/FacebookPost$Comment;->id:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->k:Ljava/lang/String;

    .line 678
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->showDialog(I)V

    goto :goto_1

    .line 686
    :sswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 664
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->d(I)Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$Item;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 570
    :sswitch_0
    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$PostItem;->a()Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    const-string v3, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v5}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 578
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    packed-switch v1, :pswitch_data_0

    .line 592
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 581
    :pswitch_0
    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 586
    :pswitch_1
    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 591
    :pswitch_2
    invoke-interface {p1, v2, v8, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 606
    :sswitch_1
    const v1, 0x7f0b0346

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 607
    const v1, 0x7f0b0368

    invoke-interface {p1, v2, v5, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 608
    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->f()Lcom/facebook/katana/model/FacebookPost$Comments;

    move-result-object v1

    iget-boolean v1, v1, Lcom/facebook/katana/model/FacebookPost$Comments;->canRemove:Z

    if-eqz v1, :cond_2

    .line 609
    const/4 v1, 0x2

    const v3, 0x7f0b035c

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 613
    :cond_2
    check-cast v0, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter$CommentItem;->a()Lcom/facebook/katana/model/FacebookPost$Comment;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Comment;->text:Ljava/lang/String;

    const-string v3, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v5}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 618
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    packed-switch v1, :pswitch_data_1

    .line 630
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 621
    :pswitch_3
    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    .line 625
    :pswitch_4
    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    .line 629
    :pswitch_5
    invoke-interface {p1, v2, v8, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    .line 560
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 619
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 783
    packed-switch p1, :pswitch_data_0

    .line 803
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 785
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 786
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 787
    const v1, 0x7f0b0345

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 788
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 789
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 794
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 796
    const v1, 0x7f0b0361

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 797
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 798
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 515
    const/4 v0, 0x3

    const v1, 0x7f0b0368

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020145

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onDestroy()V

    .line 502
    invoke-virtual {p0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->e()V

    .line 505
    iput-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    .line 507
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-nez v0, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    .line 529
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 534
    :goto_1
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 532
    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;IJLcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 488
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 489
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 493
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 454
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 456
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 458
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 462
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->removeDialog(I)V

    .line 464
    iput-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->j:Ljava/lang/String;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->removeDialog(I)V

    .line 470
    iput-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->k:Ljava/lang/String;

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->g:J

    iget-object v3, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->h:Lcom/facebook/katana/model/FacebookPost;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/feedback/FeedbackActivity;->i:Lcom/facebook/katana/activity/feedback/FeedbackAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/feedback/FeedbackAdapter;->a()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 481
    :cond_3
    return-void
.end method
