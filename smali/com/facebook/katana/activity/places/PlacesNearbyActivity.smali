.class public Lcom/facebook/katana/activity/places/PlacesNearbyActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;


# instance fields
.field private A:Landroid/app/ProgressDialog;

.field private B:Lcom/facebook/katana/binding/AppSessionListener;

.field private C:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

.field private g:Lcom/facebook/katana/ui/ExtendableListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/ui/ExtendableListAdapter",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field private j:Landroid/location/Location;

.field private k:J

.field private m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

.field private n:Lcom/facebook/katana/model/FacebookPlace;

.field private o:Ljava/lang/String;

.field private p:Landroid/location/Location;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Landroid/location/Location;

.field private t:Landroid/location/Location;

.field private u:Ljava/lang/String;

.field private v:I

.field private final w:Landroid/os/Handler;

.field private x:Ljava/lang/Runnable;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    .line 132
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w:Landroid/os/Handler;

    .line 144
    iput-boolean v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    .line 145
    iput-boolean v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->z:Z

    .line 151
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$1;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->B:Lcom/facebook/katana/binding/AppSessionListener;

    .line 221
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->C:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 1210
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 750
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$6;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$6;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 765
    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-direct {v2, p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    .line 766
    new-instance v1, Lcom/facebook/katana/ui/ExtendableListAdapter;

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-direct {v1, p0, v2, v0}, Lcom/facebook/katana/ui/ExtendableListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;Lcom/facebook/katana/ui/ExtendableListAdapter$LoadMoreCallback;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g:Lcom/facebook/katana/ui/ExtendableListAdapter;

    .line 769
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g:Lcom/facebook/katana/ui/ExtendableListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/widget/ListAdapter;)V

    .line 771
    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 778
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 779
    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 780
    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 791
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 793
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 794
    const v1, 0x7f0b0419

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 795
    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    return-void
.end method

.method private C()V
    .locals 2

    .prologue
    .line 1250
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1252
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    :cond_0
    return-void
.end method

.method private D()Landroid/location/Location;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s:Landroid/location/Location;

    goto :goto_0
.end method

.method private E()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1156
    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)V

    .line 1165
    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$14;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$14;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 1174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 1175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1179
    :goto_0
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1180
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1181
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300d8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1183
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1184
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1185
    const v4, 0x7f0b040c

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1186
    const v1, 0x7f0b033d

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1189
    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-direct {v2, p0, p4}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)V

    .line 1191
    const v0, 0x7f08028d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a(Landroid/app/Dialog;Landroid/widget/Checkable;)V

    .line 1193
    return-object v1

    .line 1177
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->A:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->t:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 297
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->p:Landroid/location/Location;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->p:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 313
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h()V

    .line 315
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->p:Landroid/location/Location;

    .line 316
    iput p3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    .line 317
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    .line 320
    const/16 v0, 0x14

    if-ne p3, v0, :cond_5

    invoke-static {p2}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    new-instance v0, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;

    iget-object v4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    iget-wide v5, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->k:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;-><init>(Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;J)V

    .line 324
    invoke-static {p0, v0}, Lcom/facebook/katana/features/places/PlacesNearby;->a(Landroid/content/Context;Lcom/facebook/katana/features/places/PlacesNearby$PlacesNearbyArgType;)Lcom/facebook/katana/service/method/FqlGetPlacesNearby;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_4

    .line 327
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Ljava/util/List;)V

    .line 328
    iget-boolean v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h:Z

    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetPlacesNearby;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Ljava/util/List;)V

    .line 331
    :cond_3
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->t:Landroid/location/Location;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    goto :goto_0

    .line 339
    :cond_4
    const-string v0, "MDS_PENDING_REQUEST_ID"

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    .line 340
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    goto :goto_0

    .line 343
    :cond_5
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g()V

    .line 344
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 606
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 607
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 608
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 609
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 610
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/location/Location;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 3
    .parameter

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h:Z

    if-eqz v0, :cond_3

    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 630
    const-string v1, "extra_place"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->t:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 633
    const-string v1, "extra_nearby_location"

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->t:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v1, :cond_1

    .line 636
    const-string v1, "extra_implicit_location"

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 640
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->setResult(ILandroid/content/Intent;)V

    .line 641
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->C()V

    .line 642
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 648
    :cond_2
    :goto_0
    return-void

    .line 644
    :cond_3
    if-eqz p1, :cond_2

    .line 645
    invoke-static {p0, p1}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    if-nez p1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(Ljava/util/List;)V

    .line 381
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    .line 384
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->notifyDataSetChanged()V

    .line 387
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 270
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0, v4, p2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(ZZ)V

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(ZZ)V

    .line 274
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    const v1, 0x7f0b03d9

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/katana/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    if-ne v0, v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    if-eqz p1, :cond_2

    .line 398
    invoke-static {p1}, Lcom/facebook/katana/model/GeoRegion;->a(Ljava/util/List;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    .line 400
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Z)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 413
    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_1

    .line 415
    const v0, 0x7f0b020f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 420
    :goto_0
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 422
    if-nez p1, :cond_0

    if-nez v2, :cond_2

    .line 423
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    :goto_1
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v1, :cond_3

    .line 417
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    iget-object v0, v0, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    .line 425
    :cond_2
    const v1, 0x7f080296

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 426
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)I
    .locals 2
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->z:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->A:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()V
    .locals 9

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->p:Landroid/location/Location;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    iget-object v5, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    iget-wide v6, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->k:J

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;ILcom/facebook/katana/features/places/PlacesNearby$SearchType;JLcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    .line 352
    return-void
.end method

.method static synthetic g(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "MDS_PENDING_REQUEST_ID"

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    .line 364
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w:Landroid/os/Handler;

    return-object v0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 503
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 504
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 505
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 507
    const-string v5, "place/list index error"

    invoke-static {v5, v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 511
    :cond_1
    return-object v2
.end method

.method private i(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v4

    .line 526
    iput-boolean v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    .line 529
    if-ltz p1, :cond_2

    .line 530
    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v5

    .line 531
    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 532
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-static {v4, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b(Landroid/widget/ListView;I)I

    move-result v6

    .line 533
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0, v6}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 534
    if-nez v0, :cond_0

    .line 536
    iget-object v7, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v7}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Lcom/facebook/katana/util/Assert;->a(II)V

    .line 538
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 540
    :goto_1
    invoke-virtual {v4, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 531
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 538
    goto :goto_1

    .line 544
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(ZZ)V

    .line 545
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b(ZZ)V

    .line 546
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->notifyDataSetChanged()V

    .line 548
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 551
    const v0, 0x7f0802cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 552
    const v3, 0x7f090070

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 554
    const v3, 0x7f0802cd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 555
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 556
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 557
    const/high16 v3, 0x3f00

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/view/View;F)V

    .line 559
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 560
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Z)V

    .line 564
    if-gez p1, :cond_3

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;

    invoke-direct {v1, p0, v4}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    :cond_3
    invoke-static {p0}, Lcom/facebook/katana/util/Utils;->b(Landroid/app/Activity;)V

    .line 576
    return-void
.end method

.method static synthetic j(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    return v0
.end method

.method static synthetic l(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u()V

    return-void
.end method

.method static synthetic n(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i(I)V

    .line 517
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    iput-boolean v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    .line 582
    invoke-direct {p0, v2, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(ZZ)V

    .line 583
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b(ZZ)V

    .line 584
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->notifyDataSetChanged()V

    .line 586
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 587
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 589
    const v0, 0x7f0802cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 590
    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 592
    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 593
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 594
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 595
    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/view/View;F)V

    .line 597
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 598
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Z)V

    .line 601
    return-void
.end method

.method private w()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 692
    const v0, 0x7f0300dc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->setContentView(I)V

    .line 693
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 695
    invoke-static {}, Lcom/facebook/katana/util/LocationUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300d9

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 698
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 699
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 701
    new-instance v2, Lcom/facebook/katana/fragment/FbMapFragment;

    invoke-direct {v2}, Lcom/facebook/katana/fragment/FbMapFragment;-><init>()V

    .line 702
    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    if-nez v3, :cond_1

    .line 703
    invoke-virtual {v2, v5}, Lcom/facebook/katana/fragment/FbMapFragment;->c(Z)V

    .line 704
    invoke-virtual {v2, v5}, Lcom/facebook/katana/fragment/FbMapFragment;->d(Z)V

    .line 709
    :goto_0
    const v3, 0x7f08028f

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 710
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300da

    invoke-virtual {v1, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 717
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$4;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x()Landroid/widget/EditText;

    move-result-object v0

    .line 725
    const v1, 0x7f0b040b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 726
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 727
    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$5;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 737
    const v0, 0x7f0b0403

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e(I)V

    .line 738
    const v0, 0x7f0b020e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(I)V

    .line 739
    return-void

    .line 706
    :cond_1
    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/fragment/FbMapFragment;->a(Landroid/location/Location;)V

    .line 707
    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    invoke-virtual {v2, v3, v5}, Lcom/facebook/katana/fragment/FbMapFragment;->a(Landroid/location/Location;Z)V

    goto :goto_0
.end method

.method private x()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 742
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 656
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 659
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 661
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launched_for_place"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h:Z

    .line 663
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preset_search_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preset_search_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j:Landroid/location/Location;

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preset_search_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preset_search_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->k:J

    .line 675
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w()V

    .line 677
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    if-eq v0, v1, :cond_3

    .line 678
    const/4 v0, -0x1

    const v1, 0x7f0b01de

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(ILjava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_place"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n:Lcom/facebook/katana/model/FacebookPlace;

    .line 683
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 689
    :goto_0
    return-void

    .line 686
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 439
    const-wide/16 v2, -0x2

    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v0, p3, v2

    if-nez v0, :cond_2

    .line 445
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v2, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b(Landroid/widget/ListView;I)I

    move-result v2

    .line 452
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g:Lcom/facebook/katana/ui/ExtendableListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/ExtendableListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 454
    iget-boolean v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    if-eqz v3, :cond_4

    .line 455
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 457
    const v0, 0x7f080290

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 465
    :cond_4
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    goto :goto_0
.end method

.method protected final a(IJ)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 477
    const-wide/16 v2, -0x2

    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    move v0, v1

    .line 496
    :goto_0
    return v0

    .line 480
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    move v0, v1

    .line 481
    goto :goto_0

    .line 483
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 484
    goto :goto_0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->b(Landroid/widget/ListView;I)I

    move-result v2

    .line 487
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g:Lcom/facebook/katana/ui/ExtendableListAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/ExtendableListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 488
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 489
    goto :goto_0

    .line 492
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->performHapticFeedback(II)Z

    .line 494
    invoke-direct {p0, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i(I)V

    .line 496
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 247
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    if-nez v0, :cond_1

    .line 261
    :goto_1
    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(ZZ)V

    .line 259
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->D()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/location/Location;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1055
    return-void
.end method

.method protected final d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1070
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->d(Z)V

    .line 1073
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1074
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :cond_0
    return-void

    .line 1074
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->D()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    add-int/lit8 v2, v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/location/Location;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public final g(I)Z
    .locals 2
    .parameter

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->f:Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->s()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;->a(Landroid/widget/ListView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    const v0, 0x7f0b03f1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 616
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 617
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 618
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 620
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/model/FacebookPlace;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    if-ne p2, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 622
    const v0, 0x7f0b0422

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 623
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->y:Z

    if-eqz v0, :cond_0

    .line 1022
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->v()V

    .line 1026
    :goto_0
    return-void

    .line 1024
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    .line 1082
    packed-switch p1, :pswitch_data_0

    .line 1147
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1085
    :pswitch_0
    new-instance v5, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$10;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$10;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 1095
    new-instance v7, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$11;

    invoke-direct {v7, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$11;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 1103
    new-instance v8, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$12;

    invoke-direct {v8, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$12;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 1111
    const v0, 0x7f0b03e8

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108009b

    const v0, 0x7f0b03e9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b040c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b033d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1123
    :pswitch_1
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_services_enable_sources_dont_ask"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1135
    :pswitch_2
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b03ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location_services_turn_network_on_dont_ask"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLocationX(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1199
    const-string v1, "extra_xed_location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1200
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->setResult(ILandroid/content/Intent;)V

    .line 1201
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 1202
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1012
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 1013
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->B:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 1014
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1015
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->C:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 1016
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 930
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 933
    invoke-static {p0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 936
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 938
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->t()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->A()V

    .line 944
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->B()V

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->B:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 949
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 951
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->b(Landroid/content/Context;)Z

    move-result v0

    .line 953
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->c(Landroid/content/Context;)Z

    move-result v1

    .line 954
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->d(Landroid/content/Context;)Z

    move-result v2

    .line 955
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 956
    :cond_1
    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    .line 957
    new-instance v3, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;ZZZ)V

    iput-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    .line 989
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->C:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 1000
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Ljava/util/List;)V

    .line 1001
    return-void

    .line 993
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->showDialog(I)V

    goto :goto_0

    .line 996
    :cond_4
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->D()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->q:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->r:I

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Landroid/location/Location;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1065
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1031
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1032
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_1

    .line 1033
    const-string v1, "extra_place"

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1042
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->setResult(ILandroid/content/Intent;)V

    .line 1043
    invoke-direct {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->C()V

    .line 1044
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 1045
    return-void

    .line 1036
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v1, :cond_0

    .line 1037
    const-string v1, "extra_implicit_location"

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
