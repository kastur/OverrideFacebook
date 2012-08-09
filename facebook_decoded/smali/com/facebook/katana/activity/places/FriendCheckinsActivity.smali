.class public Lcom/facebook/katana/activity/places/FriendCheckinsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "FriendCheckinsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

.field private h:Lcom/facebook/katana/binding/AppSessionListener;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->q()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0802ef

    const v5, 0x7f0800b0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 409
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 410
    iget-boolean v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->i:Z

    if-eqz v1, :cond_1

    .line 411
    const v1, 0x7f0b0404

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    const v1, 0x7f02007b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(ILjava/lang/String;)V

    .line 418
    :goto_0
    iget-boolean v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->j:Z

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    :cond_0
    :goto_1
    return-void

    .line 414
    :cond_1
    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p0, v6}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    if-nez p1, :cond_0

    .line 426
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->i:Z

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 357
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->setContentView(I)V

    .line 360
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->i()V

    .line 363
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/SectionedListView;

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setDividerHeight(I)V

    .line 372
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 373
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/SectionedListView;->setEmptyView(Landroid/view/View;)V

    .line 376
    invoke-virtual {v0, p0}, Lcom/facebook/katana/ui/SectionedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 377
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 386
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 387
    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Z)V

    .line 389
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 175
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 177
    new-instance v0, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    .line 180
    new-instance v0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;-><init>(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 182
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->h()V

    .line 183
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->d:Ljava/lang/String;

    return-object v0
.end method

.method final g()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->j:Z

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Z)V

    .line 320
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->p()V

    .line 322
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b03df

    const/4 v1, 0x0

    .line 239
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 240
    if-nez p2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    const-string v0, "extra_status_text"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    const-string v0, "extra_tagged_ids"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    array-length v3, v5

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-wide v6, v5, v0

    .line 251
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_2
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/model/FacebookPlace;

    .line 256
    const-string v0, "extra_tagged_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 258
    const-string v0, "extra_status_privacy"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    if-eqz v2, :cond_3

    if-nez v3, :cond_6

    .line 260
    :cond_3
    if-nez v2, :cond_4

    const-string v0, "NULL"

    move-object v1, v0

    .line 261
    :goto_2
    if-nez v3, :cond_5

    const-string v0, "NULL"

    .line 263
    :goto_3
    const-string v2, "composer_checkin_error"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returned from checkin using ComposerActivity with null place or location. place="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " location="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {p0, v8}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 260
    :cond_4
    iget-wide v0, v2, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 261
    :cond_5
    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 271
    :cond_6
    const-string v0, "is_uploading_media"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-static {v5}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Landroid/location/Location;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->k:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    invoke-static {p0, v8}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 328
    const/4 v0, 0x2

    const v1, 0x7f0b035b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020229

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 291
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookCheckin;

    .line 292
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookCheckinDetails;->c()Lcom/facebook/katana/model/FacebookApp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckinDetails;->b()Lcom/facebook/katana/model/FacebookPlace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->b()Lcom/facebook/katana/model/FacebookPage;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPage;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookCheckinDetails;->mType:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mCheckinId:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "fb://post/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/IntentUriHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 340
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 337
    :pswitch_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g()V

    .line 338
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->f()V

    .line 234
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 193
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 195
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->e:Ljava/lang/String;

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->finish()V

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 207
    const-string v0, "places"

    invoke-static {p0, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 210
    iput-boolean v3, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->i:Z

    .line 211
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g()V

    .line 212
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g:Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->e()V

    goto :goto_0

    .line 216
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->i:Z

    .line 217
    iput-boolean v2, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->j:Z

    .line 218
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Z)V

    goto :goto_0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 350
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 351
    const-string v0, "extra_is_checkin"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    .line 353
    return-void
.end method
