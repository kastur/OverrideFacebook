.class public Lcom/facebook/katana/activity/places/AddPlaceActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "AddPlaceActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

.field private i:Landroid/app/ProgressDialog;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/katana/binding/AppSessionListener;

.field private m:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->l:Lcom/facebook/katana/binding/AppSessionListener;

    .line 198
    new-instance v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->m:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->f:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Lcom/facebook/katana/activity/places/AddPlaceActivity$State;)Lcom/facebook/katana/activity/places/AddPlaceActivity$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->h:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    return-object p1
.end method

.method private a(JLjava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 385
    new-instance v0, Lcom/facebook/katana/model/FacebookPlace;

    const/4 v9, 0x0

    move-wide v1, p1

    move-object v3, p3

    move-wide v7, v5

    move-object v10, v4

    invoke-direct/range {v0 .. v10}, Lcom/facebook/katana/model/FacebookPlace;-><init>(JLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V

    .line 386
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 387
    const-string v2, "extra_place"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->setResult(ILandroid/content/Intent;)V

    .line 390
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->finish()V

    .line 391
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 358
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 359
    if-eqz p2, :cond_1

    .line 360
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 369
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 370
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/16 v4, 0xf

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/util/LocationUtils;->a(DDIII)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->g:Landroid/location/Location;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPlaceActivity;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Landroid/location/Location;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Landroid/location/Location;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->h()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->g:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 321
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->f:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 322
    :cond_0
    const v0, 0x7f0b03f7

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->h:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    sget-object v1, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->PROCESSING:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    if-eq v0, v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 332
    const v0, 0x7f0b03f8

    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 337
    :cond_3
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 338
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, ""

    const v2, 0x7f0b01b1

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->i:Landroid/app/ProgressDialog;

    .line 344
    sget-object v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->PROCESSING:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->h:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    .line 348
    const-string v2, ""

    iget-object v3, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->f:Landroid/location/Location;

    iget-object v4, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->j:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->k:Ljava/util/List;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PlacesCreate;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 220
    const v0, 0x7f0300d6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->setContentView(I)V

    .line 222
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 223
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 226
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->k:Ljava/util/List;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->j:Ljava/util/List;

    .line 233
    const v0, 0x7f080289

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    new-instance v1, Lcom/facebook/katana/activity/places/AddPlaceActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity$3;-><init>(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const/4 v0, -0x1

    const v1, 0x7f0b01af

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(ILjava/lang/String;)V

    .line 243
    const-string v0, "places:has_created_place_before"

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 245
    if-nez v0, :cond_1

    .line 246
    const-string v0, "places:has_created_place_before"

    const-string v1, "true"

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    const v1, 0x7f0b03f3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v1, 0x7f0b0269

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 255
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->c(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const v0, 0x7f0b03da

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    if-nez p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 302
    const-string v0, "object"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    const-string v0, "object"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    .line 306
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->j:Ljava/util/List;

    iget-wide v2, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const v1, 0x7f08028a

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 309
    iget-object v0, v0, Lcom/facebook/katana/model/PageTopic;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->f:Landroid/location/Location;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Landroid/location/Location;Landroid/graphics/Bitmap;)V

    .line 285
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 277
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->l:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->m:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 263
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "AddPlaceActivity"

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->finish()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->l:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity;->m:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    goto :goto_0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->h()V

    .line 290
    return-void
.end method
