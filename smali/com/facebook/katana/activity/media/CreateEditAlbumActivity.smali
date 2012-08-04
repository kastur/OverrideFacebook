.class public Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "CreateEditAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/binding/AppSessionListener;

.field private g:Lcom/facebook/katana/model/FacebookAlbum;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 428
    const-string v0, "everyone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const/4 v0, 0x0

    .line 437
    :goto_0
    return v0

    .line 430
    :cond_0
    const-string v0, "networks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const-string v0, "friends-of-friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    const/4 v0, 0x2

    goto :goto_0

    .line 434
    :cond_2
    const-string v0, "friends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    const/4 v0, 0x3

    goto :goto_0

    .line 436
    :cond_3
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    const/4 v0, 0x4

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 450
    packed-switch p0, :pswitch_data_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :pswitch_0
    const-string v0, "everyone"

    .line 467
    :goto_0
    return-object v0

    .line 455
    :pswitch_1
    const-string v0, "networks"

    goto :goto_0

    .line 459
    :pswitch_2
    const-string v0, "friends-of-friends"

    goto :goto_0

    .line 463
    :pswitch_3
    const-string v0, "friends"

    goto :goto_0

    .line 467
    :pswitch_4
    const-string v0, "custom"

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 275
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const v0, 0x7f0b01d8

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 303
    :goto_0
    return-void

    .line 283
    :cond_0
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v3, v1

    .line 290
    :cond_1
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object v4, v1

    .line 297
    :cond_2
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 298
    invoke-static {v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 301
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h:Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const v0, 0x7f0b01da

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 350
    :goto_0
    return-void

    .line 316
    :cond_0
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const v0, 0x7f0b01d8

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 324
    :cond_1
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 328
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 336
    const-string v4, " "

    .line 338
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 339
    const-string v5, " "

    .line 343
    :cond_3
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 344
    invoke-static {v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->b(I)Ljava/lang/String;

    move-result-object v6

    .line 347
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->a()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i:Ljava/lang/String;

    .line 349
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->j()Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i()Z

    move-result v0

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 369
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 374
    :cond_0
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 376
    goto :goto_0

    .line 379
    :cond_1
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 381
    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 391
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 418
    :goto_1
    return v0

    .line 393
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 398
    :cond_1
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->h()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 401
    goto :goto_1

    .line 400
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 405
    :cond_3
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->g()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 408
    goto :goto_1

    .line 407
    :cond_4
    const-string v0, ""

    goto :goto_3

    .line 412
    :cond_5
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 413
    invoke-static {v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v2, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookAlbum;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 416
    goto :goto_1

    .line 418
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0800cb

    const v5, 0x7f0800ca

    const/4 v2, 0x0

    const v4, 0x7f0800a8

    .line 86
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->setContentView(I)V

    .line 90
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v3, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 92
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 93
    const v0, 0x7f0b02c0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 94
    const v0, 0x7f0b02c2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    const v0, 0x7f0b02c1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 96
    const v0, 0x7f0b02c3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 116
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {p0, v0}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    .line 119
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f0b02c5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 140
    :goto_0
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 141
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    const v3, 0x7f0b01db

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 143
    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g:Lcom/facebook/katana/model/FacebookAlbum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookAlbum;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 148
    :cond_1
    new-instance v0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;

    invoke-direct {v0, p0, v2}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$CreateEditAlbumAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    .line 149
    return-void

    .line 131
    :cond_2
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b01cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b01ca

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v2

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->showDialog(I)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->g()V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->f()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->showDialog(I)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->finish()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f0800a8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 265
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 226
    const v1, 0x7f0b01cf

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 233
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 235
    const v1, 0x7f0b01d6

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 237
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    new-instance v5, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$1;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity$1;-><init>(Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;)V

    .line 250
    invoke-virtual {p0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const v0, 0x7f0b018b

    .line 256
    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0b01dc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_0
    const v0, 0x7f0b0185

    goto :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 154
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 156
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 159
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->removeDialog(I)V

    .line 161
    iput-object v3, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->h:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->removeDialog(I)V

    .line 167
    iput-object v3, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->i:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CreateEditAlbumActivity;->f:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 172
    return-void
.end method
