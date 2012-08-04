.class public Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "SuggestPlaceInfoActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

.field private h:Lcom/facebook/katana/model/FacebookPlace;

.field private i:Landroid/location/Location;

.field private j:Lcom/facebook/katana/model/FacebookPageFull;

.field private k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

.field private l:Landroid/app/ProgressDialog;

.field private m:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 70
    new-instance v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$1;-><init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;)Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Lcom/facebook/katana/model/FacebookPageFull;)Lcom/facebook/katana/model/FacebookPageFull;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    return-object p1
.end method

.method private a(Landroid/location/Location;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 349
    const v0, 0x7f080287

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 350
    if-eqz p2, :cond_1

    .line 351
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 360
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 361
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/16 v4, 0xf

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/util/LocationUtils;->a(DDIII)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/binding/AppSession;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Landroid/location/Location;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Landroid/location/Location;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/PageTopic;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Ljava/util/List;)V

    .line 324
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/PageTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    .line 312
    iget-wide v2, v0, Lcom/facebook/katana/model/PageTopic;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->l:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->remove(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->notifyDataSetChanged()V

    .line 330
    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/model/FacebookPlace;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)Lcom/facebook/katana/model/FacebookPageFull;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookListView;

    .line 143
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300df

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300de

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookListView;->addHeaderView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/facebook/katana/view/FacebookListView;->addFooterView(Landroid/view/View;)V

    .line 150
    new-instance v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$2;-><init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-instance v1, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    const v2, 0x7f0300d7

    invoke-direct {v1, p0, p0, v2}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;-><init>(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    .line 158
    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method

.method static synthetic f(Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i()V

    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    invoke-static {p0, v0}, Lcom/facebook/katana/service/method/PlaceSuggestions;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    move-result-object v4

    .line 247
    if-nez v4, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->finish()V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    const v2, 0x7f08029a

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    new-instance v5, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getCount()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 255
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v6}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 256
    iget-object v6, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v6, v3}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/katana/service/method/PlaceSuggestions;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    .line 266
    :cond_3
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/katana/service/method/PlaceSuggestions;->c(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    .line 270
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/katana/service/method/PlaceSuggestions;->d(Ljava/lang/String;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    .line 274
    :cond_5
    invoke-virtual {v4, v5}, Lcom/facebook/katana/service/method/PlaceSuggestions;->a(Ljava/util/Set;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    .line 275
    sget-object v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->SAVING:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    .line 276
    const-string v0, ""

    const v1, 0x7f0b01b1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->l:Landroid/app/ProgressDialog;

    .line 277
    invoke-virtual {v4}, Lcom/facebook/katana/service/method/PlaceSuggestions;->h()Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    .line 279
    sget-object v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->NONE:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    .line 280
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->l:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->setResult(I)V

    .line 282
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->finish()V

    goto/16 :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mTopicList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Ljava/util/List;)V

    .line 292
    const v0, 0x7f080288

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    const v2, 0x7f08029a

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    iget-object v3, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookPageFull;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mLocation:Ljava/util/Map;

    const-string v3, "located_in"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mLocation:Ljava/util/Map;

    const-string v3, "street"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 299
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPageFull;->mPhone:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void

    .line 303
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$CategoryListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 335
    const v0, 0x7f0b0423

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/places/AddPageTopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f0300dd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    .line 122
    const-string v0, ""

    const v1, 0x7f0b020e

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->l:Landroid/app/ProgressDialog;

    .line 124
    sget-object v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;->FETCHING:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->k:Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity$State;

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->j:Lcom/facebook/katana/model/FacebookPageFull;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/model/FacebookPageFull;

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetPages;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 130
    :cond_0
    const/4 v0, -0x1

    const v1, 0x7f0b01de

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(ILjava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f()V

    .line 135
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->c(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const v0, 0x7f0b0419

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    if-nez p2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 387
    const-string v0, "object"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "object"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/PageTopic;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Lcom/facebook/katana/model/PageTopic;)V

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 373
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 374
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Landroid/location/Location;Landroid/graphics/Bitmap;)V

    .line 375
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_1

    .line 168
    sget-object v0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->e:Ljava/lang/String;

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->finish()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->f:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->m:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->h:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 181
    iget-object v0, p0, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->i:Landroid/location/Location;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->a(Landroid/location/Location;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;->g()V

    .line 242
    return-void
.end method
