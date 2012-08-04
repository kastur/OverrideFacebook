.class public Lcom/facebook/katana/activity/stream/StreamActivity;
.super Lcom/facebook/katana/activity/ProfileFacebookListActivity;
.source "StreamActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/location/Location;

.field private D:Z

.field protected e:Lcom/facebook/katana/model/FacebookPlace;

.field protected f:Z

.field protected n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/facebook/katana/model/FacebookCheckin;

.field private q:Lcom/facebook/katana/binding/AppSession;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:Lcom/facebook/katana/TabProgressListener;

.field private u:Lcom/facebook/katana/activity/stream/StreamAdapter;

.field private v:Lcom/facebook/katana/model/FacebookStreamType;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/activity/stream/StreamActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;-><init>()V

    .line 1231
    return-void
.end method

.method private A()V
    .locals 7

    .prologue
    const v2, 0x7f0b036b

    const v4, 0x7f0802d2

    const v3, 0x7f0802d1

    .line 225
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v0, v1, :cond_5

    .line 226
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 227
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$1;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f0802d0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$2;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    .line 246
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.katana.SHARE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->requestFocus()Z

    .line 250
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v1, v3, :cond_2

    .line 257
    :cond_1
    iget-wide v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-wide v5, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    const v1, 0x7f0b0364

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setHint(I)V

    .line 263
    :cond_2
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$3;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->r:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v1, v3, :cond_3

    .line 283
    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setHint(I)V

    .line 284
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->k()V

    .line 353
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v2

    .line 257
    goto :goto_0

    .line 287
    :cond_5
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 288
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$4;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v0, 0x7f0802d5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 297
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$5;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 310
    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 314
    const v1, 0x7f0802d6

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/facebook/katana/activity/stream/StreamActivity$6;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$6;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$7;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_place"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    .line 344
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->c()Lcom/facebook/katana/model/FacebookDeal;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 348
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->H()V

    .line 351
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    goto :goto_1
.end method

.method private B()V
    .locals 4

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_0

    .line 512
    const v0, 0x7f0802cf

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 513
    if-eqz v1, :cond_2

    .line 514
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-boolean v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :cond_0
    :goto_1
    return-void

    .line 514
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 516
    :cond_2
    sget-object v0, Lcom/facebook/katana/activity/stream/StreamActivity;->p:Ljava/lang/String;

    const-string v1, "Sharer was null but should not have been."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private C()V
    .locals 2

    .prologue
    .line 1082
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0354

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1083
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b034e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1084
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 1162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    .line 1163
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a()V

    .line 1166
    :cond_0
    return-void
.end method

.method private E()[J
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v0, v1, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1195
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method private F()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 1609
    const v0, 0x7f0802d4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1610
    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1611
    const v2, 0x7f0802d5

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1612
    const v3, 0x7f0802d6

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1613
    const v4, 0x7f0802d2

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1615
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1619
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    return-void
.end method

.method private G()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1634
    const v0, 0x7f0802d4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1635
    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1636
    const v2, 0x7f0802d5

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1637
    const v3, 0x7f0802d6

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1638
    const v4, 0x7f0802d2

    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1640
    iget-boolean v5, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    if-eqz v5, :cond_0

    .line 1641
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1642
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1643
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    :goto_0
    return-void

    .line 1647
    :cond_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1648
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1649
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1651
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 1718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?promotion_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPlace;->c()Lcom/facebook/katana/model/FacebookDeal;

    move-result-object v1

    iget-wide v1, v1, Lcom/facebook/katana/model/FacebookDeal;->mDealId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1724
    const v0, 0x7f0802d3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1726
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1728
    new-instance v2, Lcom/facebook/katana/activity/stream/StreamActivity$14;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity$14;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1748
    new-instance v3, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;

    invoke-direct {v3, p0, v2}, Lcom/facebook/katana/webview/FacebookAuthentication$AuthWebViewClient;-><init>(Landroid/content/Context;Lcom/facebook/katana/webview/FacebookAuthentication$Callback;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1752
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1753
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    return-wide v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V
    .locals 1
    .parameter

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    .line 1175
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPost;)V
    .locals 20
    .parameter

    .prologue
    .line 1208
    if-eqz p1, :cond_0

    .line 1209
    const/4 v11, 0x2

    .line 1210
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    .line 1216
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v2, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v1, v2, :cond_1

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v3, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->E()[J

    move-result-object v5

    const-wide/16 v6, -0x1

    const/16 v10, 0x14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v12}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;J[JJJIILcom/facebook/katana/model/FacebookStreamType;)Ljava/lang/String;

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->p()V

    .line 1228
    :goto_1
    return-void

    .line 1212
    :cond_0
    const/4 v11, 0x0

    .line 1213
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 1224
    :cond_1
    const-wide/16 v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    move-object/from16 v17, v0

    const/16 v18, 0x14

    move-object/from16 v12, p0

    move-wide v15, v8

    move/from16 v19, v11

    invoke-static/range {v12 .. v19}, Lcom/facebook/katana/service/method/FqlGetPlaceCheckins;->a(Landroid/content/Context;JJLcom/facebook/katana/model/FacebookPlace;II)Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 3
    .parameter

    .prologue
    .line 1147
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1149
    const-string v1, "extra_user_display_name"

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    const-string v1, "extra_image_url"

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v1, "extra_user_type"

    iget v2, p1, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1153
    const-string v1, "can_post"

    iget-boolean v2, p1, Lcom/facebook/katana/model/FacebookProfile;->mCanPost:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1154
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1155
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/stream/StreamActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->A:Z

    return v0
.end method

.method private a(Lcom/facebook/katana/binding/FacebookStreamContainer;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v2, v3, :cond_1

    .line 186
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v2, v3, :cond_0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/UserInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v2, "com.facebook.katana.profile.id"

    iget-wide v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    const-string v2, "com.facebook.katana.profile.show_photo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string v2, "com.facebook.katana.profile.is.limited"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->finish()V

    .line 204
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v2, v3, :cond_1

    .line 195
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/PageInfoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const-string v3, "com.facebook.katana.profile.id"

    iget-wide v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string v3, "com.facebook.katana.profile.show_photo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v3, "com.facebook.katana.profile.connected"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->finish()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->D()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/stream/StreamActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0800b0

    const v3, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1120
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->t:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->t:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v0, p1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 1123
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->w:Z

    .line 1125
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1126
    if-eqz p1, :cond_2

    .line 1127
    if-eqz v0, :cond_1

    .line 1128
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    :goto_0
    return-void

    .line 1133
    :cond_2
    if-eqz v0, :cond_3

    .line 1134
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :cond_3
    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/stream/StreamActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/model/FacebookStreamType;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->q()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->q()V

    return-void
.end method

.method static synthetic j(Lcom/facebook/katana/activity/stream/StreamActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1552
    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1555
    const/high16 v0, -0x4080

    .line 1558
    if-eqz p1, :cond_3

    .line 1559
    new-array v8, v9, [F

    .line 1561
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v4, v4, Lcom/facebook/katana/model/FacebookPlace;->mLatitude:D

    iget-object v6, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v6, v6, Lcom/facebook/katana/model/FacebookPlace;->mLongitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 1565
    aget v0, v8, v10

    const v1, 0x453b8000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    move v0, v9

    .line 1568
    :goto_0
    aget v1, v8, v10

    .line 1569
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->C:Landroid/location/Location;

    move v2, v0

    .line 1572
    :goto_1
    const v0, 0x7f0802d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1573
    if-eqz v2, :cond_0

    .line 1574
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->G()V

    .line 1575
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1603
    :goto_2
    return-void

    .line 1577
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->F()V

    .line 1578
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 1579
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1581
    :cond_1
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1582
    invoke-static {p0, v1}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 1585
    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$13;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$13;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    move v0, v10

    goto :goto_0

    :cond_3
    move v1, v0

    move v2, v10

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 358
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "within_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iput-boolean v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->m:Z

    .line 362
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 365
    invoke-static {p0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    .line 369
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 370
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    .line 372
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_6

    .line 374
    const-class v1, Lcom/facebook/katana/model/FacebookStreamType;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStreamType;

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_7

    .line 381
    const v0, 0x7f0300fd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->setContentView(I)V

    .line 383
    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    .line 385
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->z:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$8;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setOnRefreshListener(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer$OnRefreshListener;)V

    .line 396
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_1

    .line 397
    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/Assert;->a(JJ)V

    .line 401
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->r:Ljava/util/List;

    .line 402
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->r:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 406
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_2
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->C()V

    .line 414
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 416
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v0, v1, :cond_9

    .line 417
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    const v1, 0x7f0300f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_2

    .line 424
    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/MarkGroupRead;->a(Landroid/content/Context;J)Ljava/lang/String;

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->j()V

    .line 428
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->B:I

    .line 430
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->h()V

    .line 431
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->A()V

    .line 433
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(JLcom/facebook/katana/model/FacebookStreamType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 437
    :cond_3
    invoke-direct {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    .line 439
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 441
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->showDialog(I)V

    .line 457
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_5

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/model/FacebookPage;

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetPages;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    new-instance v2, Lcom/facebook/katana/activity/stream/StreamActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity$9;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 480
    :cond_5
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->B()V

    .line 481
    return-void

    .line 377
    :cond_6
    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    goto/16 :goto_0

    .line 393
    :cond_7
    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 409
    :cond_8
    const v0, 0x7f02021f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->c(I)V

    goto/16 :goto_2

    .line 419
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    const v1, 0x7f0300f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method public final a(Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 903
    iget v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->B:I

    sub-int v0, p2, v0

    .line 904
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 905
    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(JLcom/facebook/katana/model/FacebookStreamType;)Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v1

    .line 911
    if-lez v1, :cond_0

    .line 912
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 913
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v1, v4}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Z)V

    .line 914
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 915
    invoke-direct {p0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 926
    :pswitch_0
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    const-string v2, "extra_post_id"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v0, "extra_uid"

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 930
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->i:J

    invoke-static {p0, v2, v3}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 932
    const-string v0, "comment_actor"

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 934
    :cond_2
    invoke-virtual {p0, v1, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->t:Lcom/facebook/katana/TabProgressListener;

    .line 1093
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->t:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->t:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->w:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->a_(Z)V

    .line 1097
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 1825
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1828
    :goto_0
    return-void

    .line 1827
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->D()V

    goto :goto_0

    .line 1825
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 1807
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 1812
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 1813
    const/16 v0, 0xb

    const v1, 0x7f0b035b

    const v2, 0x7f020229

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(III)V

    .line 1814
    return-void
.end method

.method public final g()V
    .locals 5

    .prologue
    .line 1819
    const/16 v1, 0xb

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->a(JLcom/facebook/katana/model/FacebookStreamType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(IZ)V

    .line 1820
    return-void

    .line 1819
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j()V
    .locals 5

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 491
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 492
    const v2, 0x7f0802da

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 495
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->l:Ljava/util/List;

    .line 500
    :cond_1
    :goto_1
    return-void

    .line 498
    :cond_2
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j()V

    goto :goto_1
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 212
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    .line 214
    const v1, 0x7f0802d2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 215
    const v2, 0x7f0802d0

    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 217
    iget-boolean v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->A:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 219
    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setVisibility(I)V

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void

    .line 217
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method protected final l()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 1660
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1661
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1662
    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/stream/StreamActivity;->showDialog(I)V

    .line 1664
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->C:Landroid/location/Location;

    iget-object v5, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Landroid/location/Location;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    :goto_0
    return-void

    .line 1667
    :catch_0
    move-exception v0

    invoke-virtual {p0, v7}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 1668
    const v0, 0x7f0b03df

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1011
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1012
    if-nez p2, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1018
    :sswitch_0
    if-eqz p3, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_3

    .line 1022
    :cond_2
    const-string v0, "extra_ptf"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0, v2, p3}, Lcom/facebook/katana/activity/stream/StreamActivity;->setResult(ILandroid/content/Intent;)V

    .line 1025
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->finish()V

    goto :goto_0

    .line 1028
    :cond_3
    const-string v0, "extra_logout"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-static {p0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 1037
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 1038
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1041
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 1044
    invoke-static {v0}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    .line 1046
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->o:Lcom/facebook/katana/model/FacebookCheckin;

    if-eqz v0, :cond_5

    .line 1048
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->o:Lcom/facebook/katana/model/FacebookCheckin;

    iget-wide v2, v1, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PlacesEditCheckin;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->v()V

    goto :goto_0

    .line 1064
    :sswitch_2
    if-ne p2, v2, :cond_0

    .line 1065
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->e(Landroid/content/Context;)V

    .line 1067
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->d(Landroid/content/Context;)V

    .line 1069
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1071
    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1015
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x14 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->B:I

    sub-int/2addr v3, v4

    .line 814
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 897
    :goto_1
    return v0

    .line 809
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 816
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 817
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/activity/feedback/FeedbackActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    const-string v3, "extra_post_id"

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v0, "extra_uid"

    iget-wide v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 820
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->i:J

    invoke-static {p0, v3, v4}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    const-string v0, "comment_actor"

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 824
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 829
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 835
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 837
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 839
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 845
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    .line 848
    iget-object v2, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost$Attachment;->href:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 856
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 857
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->y:Ljava/lang/String;

    .line 859
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 866
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 871
    :pswitch_7
    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v4, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v3

    .line 872
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v4, 0x7f080123

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 874
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v4, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v0, p0, v3, v4, v5}, Lcom/facebook/katana/service/method/PlacesRemoveTag;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookPost;J)Ljava/lang/String;

    goto/16 :goto_0

    .line 884
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v0

    .line 885
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost;->e()Lcom/facebook/katana/model/FacebookPost$Attachment;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPost$Attachment;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    goto/16 :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 710
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->B:I

    if-ge v0, v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->B:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(I)Lcom/facebook/katana/model/FacebookPost;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 730
    :pswitch_0
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 731
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    const v0, 0x7f0b0349

    invoke-interface {p1, v2, v7, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 734
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 735
    const/4 v0, 0x5

    const v3, 0x7f0b034b

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 737
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    if-ne v0, v9, :cond_4

    iget-object v0, v1, Lcom/facebook/katana/model/FacebookPost;->mTaggedIds:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 740
    const/4 v0, 0x6

    const v3, 0x7f0b040a

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 742
    :cond_4
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->h()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 744
    const/4 v0, 0x7

    const v3, 0x7f0b036a

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 746
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v3, :cond_6

    .line 747
    const/4 v0, 0x2

    const v3, 0x7f0b0368

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 749
    :cond_6
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 751
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v5, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    .line 752
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 756
    :goto_1
    const v3, 0x7f0b0369

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v8, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 760
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v3, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v3, :cond_8

    iget-wide v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-wide v3, v1, Lcom/facebook/katana/model/FacebookPost;->appId:J

    const-wide v5, 0x51a67c8e50L

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    .line 763
    const v0, 0x7f0b035f

    invoke-interface {p1, v2, v9, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 766
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPost;->message:Ljava/lang/String;

    const-string v3, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v0, v8}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 770
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    packed-switch v1, :pswitch_data_1

    .line 784
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 754
    :cond_9
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookPost;->d()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 773
    :pswitch_1
    const/16 v4, 0xa

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    .line 778
    :pswitch_2
    const/16 v4, 0xb

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    .line 783
    :pswitch_3
    const/16 v4, 0xc

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    .line 712
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 771
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 950
    packed-switch p1, :pswitch_data_0

    .line 1003
    :pswitch_0
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 952
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 953
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 954
    const v1, 0x7f0b035a

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 955
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 956
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 961
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 962
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 963
    const v1, 0x7f0b03dc

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 964
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 965
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 970
    :pswitch_3
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 971
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 972
    const v1, 0x7f0b0362

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 973
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 974
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 979
    :pswitch_4
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->d(Landroid/content/Context;)V

    .line 980
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0431

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0432

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0433

    new-instance v2, Lcom/facebook/katana/activity/stream/StreamActivity$12;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$12;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0405

    new-instance v2, Lcom/facebook/katana/activity/stream/StreamActivity$11;

    invoke-direct {v2, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$11;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 694
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onDestroy()V

    .line 696
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    .line 698
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 699
    const-string v1, "stream_scroll_pos"

    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 671
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onPause()V

    .line 674
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    .line 675
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 681
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 684
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 524
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onResume()V

    .line 527
    invoke-static {p0, v6}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    .line 529
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_1

    .line 532
    sget-object v0, Lcom/facebook/katana/activity/stream/StreamActivity;->p:Ljava/lang/String;

    const-string v1, "Invalid session"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->finish()V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 540
    iput-object v9, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->y:Ljava/lang/String;

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 546
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 547
    iput-object v9, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 552
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_1

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->b(JLcom/facebook/katana/model/FacebookStreamType;)Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-result-object v3

    .line 558
    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3}, Lcom/facebook/katana/binding/FacebookStreamContainer;->c()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_a

    .line 563
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSession;->a(JLcom/facebook/katana/model/FacebookStreamType;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 565
    invoke-direct {p0, v9}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/model/FacebookPost;)V

    .line 567
    :cond_6
    invoke-direct {p0, v6}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    .line 579
    :goto_2
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_7

    .line 581
    const-string v0, "places:last_checkin_pageid"

    invoke-static {p0, v0, v7, v8}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 584
    const-string v2, "places:last_checkin_time"

    invoke-static {p0, v2, v7, v8}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 588
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v9, v2, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v0, v0, v4

    if-gtz v0, :cond_c

    .line 591
    iput-boolean v6, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    .line 592
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->G()V

    .line 594
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->w()V

    .line 595
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->v()V

    .line 610
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    if-nez v0, :cond_e

    .line 613
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_d

    .line 619
    :goto_4
    new-instance v0, Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->i()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v5

    new-instance v6, Lcom/facebook/katana/activity/stream/StreamActivity$10;

    invoke-direct {v6, p0}, Lcom/facebook/katana/activity/stream/StreamActivity$10;-><init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/activity/stream/StreamAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/binding/FacebookStreamContainer;Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;J)V

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    .line 643
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 647
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.katana.SHARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stream_scroll_pos"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 653
    if-lez v0, :cond_9

    .line 654
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 656
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->j()V

    goto/16 :goto_0

    .line 570
    :cond_a
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->q:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    iget-object v4, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->v:Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0, v1, v2, v4}, Lcom/facebook/katana/binding/AppSession;->a(JLcom/facebook/katana/model/FacebookStreamType;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 572
    invoke-direct {p0, v6}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    goto/16 :goto_2

    .line 574
    :cond_b
    invoke-direct {p0, v11}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Z)V

    goto/16 :goto_2

    .line 597
    :cond_c
    iput-boolean v11, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    .line 600
    const-string v0, "places"

    invoke-static {p0, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v6, :cond_7

    .line 603
    invoke-static {p0, p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    goto/16 :goto_3

    .line 616
    :cond_d
    iget-wide v7, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    goto/16 :goto_4

    .line 662
    :cond_e
    if-eqz v3, :cond_0

    .line 663
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->u:Lcom/facebook/katana/activity/stream/StreamAdapter;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 688
    invoke-super {p0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->onStop()V

    .line 689
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1106
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1108
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1109
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1110
    return-void
.end method

.method protected final u()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/facebook/katana/activity/stream/StreamActivity;->B()V

    .line 506
    return-void
.end method

.method protected final v()V
    .locals 9

    .prologue
    const v8, 0x7f0b040d

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1674
    const v0, 0x7f0802d5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1675
    iget-boolean v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    if-eqz v1, :cond_1

    .line 1676
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    invoke-virtual {p0, v8}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    :goto_0
    return-void

    .line 1680
    :cond_0
    const v1, 0x7f0b040e

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1684
    :cond_1
    const/4 v2, 0x0

    .line 1685
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1686
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1687
    invoke-static {p0, v3, v4}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    .line 1688
    if-eqz v1, :cond_6

    .line 1689
    iget-object v1, v1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 1692
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1693
    :cond_2
    invoke-virtual {p0, v8}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1695
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1696
    const v2, 0x7f0b0413

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1699
    :cond_4
    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 1700
    const v2, 0x7f0b0414

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1704
    :cond_5
    const v2, 0x7f0b0415

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method protected final w()V
    .locals 2

    .prologue
    .line 1757
    const-string v0, "places:last_checkin"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_0

    .line 1760
    const-class v1, Lcom/facebook/katana/model/FacebookCheckin;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookCheckin;

    .line 1762
    iget-boolean v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->D:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1763
    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->o:Lcom/facebook/katana/model/FacebookCheckin;

    .line 1764
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookCheckin;->b()Lcom/facebook/katana/model/FacebookCheckinDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookCheckinDetails;->mTaggedUids:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    .line 1767
    :cond_0
    return-void
.end method

.method protected final x()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v6, 0x0

    .line 1771
    const v0, 0x7f0802d1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 1773
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/facebook/katana/model/FacebookProfile;

    invoke-virtual {v2, v6, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/FacebookProfile;

    .line 1777
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1778
    array-length v3, v0

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v7, v0, v1

    .line 1779
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1780
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 1783
    const-string v10, "@[%d:%s]"

    new-array v11, v14, [Ljava/lang/Object;

    iget-wide v12, v7, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    const/4 v12, 0x1

    iget-object v13, v7, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1784
    invoke-virtual {v2, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1786
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1778
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1788
    :cond_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1791
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1793
    const/4 v7, 0x0

    .line 1794
    iget-wide v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->i:J

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/ConnectionsProvider;->b(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1795
    iget-object v7, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    .line 1797
    :cond_1
    invoke-virtual {p0, v14}, Lcom/facebook/katana/activity/stream/StreamActivity;->showDialog(I)V

    .line 1798
    iget-wide v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->s:J

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/facebook/katana/service/method/StreamPublish;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/Set;ZLcom/facebook/katana/model/FacebookProfile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity;->x:Ljava/lang/String;

    .line 1801
    :cond_2
    return-void
.end method
