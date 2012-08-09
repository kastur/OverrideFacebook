.class public Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "PhotoFeedbackActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/FatTitleHeader;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/binding/AppSessionListener;

.field private g:Lcom/facebook/katana/model/FacebookPhoto;

.field private h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private m:Lcom/facebook/katana/util/logging/PerformanceMarker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 554
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Lcom/facebook/katana/model/FacebookPhoto;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->m:Lcom/facebook/katana/util/logging/PerformanceMarker;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/model/FacebookPhoto;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const v0, 0x7f0802ef

    const v4, 0x7f0800b0

    const v3, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 538
    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->k:Z

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 523
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 527
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 529
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 283
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 284
    const v0, 0x7f0300c8

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->setContentView(I)V

    .line 287
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 290
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookPhoto;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    .line 295
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-nez v0, :cond_0

    .line 296
    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 299
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/util/Collection;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    const-string v1, "photoGetPhotos"

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->m:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 302
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->m:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->c(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;

    .line 312
    :cond_0
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;

    invoke-direct {v0, p0, v6}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 315
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h()V

    .line 318
    new-instance v0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    .line 319
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$1;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 343
    new-instance v1, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$2;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 366
    new-instance v1, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$3;-><init>(Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 376
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->i()V

    .line 377
    return-void
.end method

.method public final a(Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 436
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    .line 437
    iget-wide v1, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v1, v2, v0}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;JLcom/facebook/katana/model/FacebookProfile;)V

    .line 438
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 2
    .parameter

    .prologue
    .line 693
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 701
    :goto_0
    return-void

    .line 696
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Z)V

    goto :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 678
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 679
    const/4 v0, 0x1

    const v1, 0x7f0b035b

    const v2, 0x7f020229

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->a(III)V

    .line 681
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 686
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/binding/AppSession;->b(Ljava/lang/String;)Z

    move-result v0

    .line 687
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(IZ)V

    .line 688
    return-void

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const v2, 0x7f020230

    .line 474
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 475
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-nez v1, :cond_0

    move-object v1, v7

    .line 477
    :goto_0
    if-eqz v1, :cond_1

    .line 479
    :try_start_0
    invoke-static {v1}, Lcom/facebook/katana/util/ImageUtils;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-nez v0, :cond_3

    move-object v0, v7

    .line 497
    :goto_2
    if-nez v0, :cond_5

    .line 498
    const v0, 0x7f0b039d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 500
    :goto_3
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    sget-object v2, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_4
    invoke-static {p0, v2, v0, v1}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v0

    .line 509
    const v1, 0x7f0b02a1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 510
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->k()[B

    move-result-object v1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    .line 482
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->r()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cannot set image"

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v4

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->h()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->g()J

    move-result-wide v0

    goto :goto_4

    :cond_5
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public onClickLike(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 442
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 444
    iget-boolean v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->k:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 445
    iget-boolean v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->k:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/katana/service/method/GraphObjectLike$Operation;->UNLIKE:Lcom/facebook/katana/service/method/GraphObjectLike$Operation;

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/GraphObjectLike;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/GraphObjectLike$Operation;Ljava/lang/Long;)Ljava/lang/String;

    .line 449
    :cond_0
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    :cond_2
    sget-object v0, Lcom/facebook/katana/service/method/GraphObjectLike$Operation;->LIKE:Lcom/facebook/katana/service/method/GraphObjectLike$Operation;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 454
    packed-switch p1, :pswitch_data_0

    .line 465
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 456
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 458
    const v1, 0x7f0b02a0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 460
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 425
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 428
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 382
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 385
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 387
    const/4 v0, 0x0

    .line 389
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 391
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->removeDialog(I)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->i:Ljava/lang/String;

    .line 398
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 399
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->h:Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity$PhotoFeedbackAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    :cond_2
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->b(Z)V

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->g:Lcom/facebook/katana/model/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoFeedbackActivity;->j:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/facebook/katana/service/method/PhotosGetLikes;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    :cond_4
    return-void
.end method
