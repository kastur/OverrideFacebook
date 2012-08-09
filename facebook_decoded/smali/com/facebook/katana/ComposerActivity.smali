.class public Lcom/facebook/katana/ComposerActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "ComposerActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsSubModuleActivity;


# static fields
.field private static Q:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:Lcom/facebook/katana/ui/OverlaySelectorView;

.field private B:J

.field private final C:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/location/Location;

.field private E:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:J

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private K:Landroid/os/Handler;

.field private L:Lcom/facebook/katana/util/logging/InteractionLogger;

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Landroid/widget/ImageView;

.field private P:J

.field protected e:Landroid/widget/EditText;

.field private f:Lcom/facebook/katana/binding/AppSession;

.field private g:Lcom/facebook/katana/model/FacebookProfile;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/katana/model/FacebookPlace;

.field private m:Landroid/location/Location;

.field private n:Lcom/facebook/katana/features/composer/AudienceAdapter;

.field private o:Landroid/widget/ImageButton;

.field private p:Lcom/facebook/katana/features/composer/TimeAdapter;

.field private q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

.field private r:Z

.field private s:Z

.field private t:J

.field private u:Landroid/widget/TextView;

.field private v:Lcom/facebook/katana/ComposerActivity$TipMode;

.field private w:Landroid/net/Uri;

.field private x:Landroid/net/Uri;

.field private y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

.field private z:Lcom/facebook/katana/ui/OverlaySelectorView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    sput-object v0, Lcom/facebook/katana/ComposerActivity;->Q:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    .line 231
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 235
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->C:Ljava/util/LinkedList;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->H:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    .line 2195
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_composer_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_composer_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_composer_title_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_composer_title_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 654
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v0, :cond_2

    .line 655
    const v0, 0x7f0b03dd

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 656
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v0, :cond_3

    .line 657
    const v0, 0x7f0b039b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 659
    :cond_3
    const v0, 0x7f0b0300

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private B()[Lcom/facebook/katana/model/FacebookPhotoTag;
    .locals 2

    .prologue
    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1043
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 1044
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1045
    return-object v1
.end method

.method private C()V
    .locals 2

    .prologue
    .line 1079
    const v0, 0x7f0800a5

    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->b(I)V

    .line 1080
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->L:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method private D()V
    .locals 1

    .prologue
    .line 1085
    const v0, 0x7f0800a6

    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->b(I)V

    .line 1086
    return-void
.end method

.method private E()J
    .locals 4

    .prologue
    .line 1160
    const-string v0, "composer_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ComposerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1161
    const-string v1, "user_profile_last_update"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private F()V
    .locals 3

    .prologue
    .line 1511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1512
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1516
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1517
    const v1, 0x7f0b01b0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1518
    const v1, 0x7f0b01b7

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1519
    const v1, 0x7f0b03d7

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/ComposerActivity$18;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$18;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1526
    const v1, 0x7f0b0264

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/ComposerActivity$19;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$19;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1532
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1533
    return-void

    .line 1514
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private G()V
    .locals 4

    .prologue
    .line 1545
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1547
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1548
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1549
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1550
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1552
    const-string v2, "profiles"

    invoke-static {v1}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1554
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1555
    return-void
.end method

.method private H()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1598
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    .line 1599
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$ComposerMovementMethod;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$ComposerMovementMethod;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1600
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1602
    const-string v0, "extra_composer_setting"

    invoke-virtual {p0, v0, v3}, Lcom/facebook/katana/ComposerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1604
    const-string v1, "extra_last_status_update"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1607
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Ljava/lang/String;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1613
    :goto_0
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$20;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$20;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1621
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$21;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$21;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    return-void

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method

.method private I()V
    .locals 3

    .prologue
    .line 1633
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1635
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1636
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1645
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->I()V

    .line 1647
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1649
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1650
    return-void
.end method

.method private K()V
    .locals 5

    .prologue
    .line 1654
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1655
    const/4 v1, 0x0

    .line 1656
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v2, :cond_0

    .line 1657
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1661
    :cond_0
    if-eqz v1, :cond_1

    .line 1662
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1667
    :goto_0
    return-void

    .line 1664
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private L()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1704
    iget-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1705
    iput-wide v2, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    .line 1706
    sget-object v0, Lcom/facebook/katana/features/UserSeenNux$Project;->EVENT_TAG_EXPANSION:Lcom/facebook/katana/features/UserSeenNux$Project;

    invoke-static {p0, v0}, Lcom/facebook/katana/service/method/GraphSetUserSeenNux;->a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)Ljava/lang/String;

    .line 1708
    :cond_0
    return-void
.end method

.method private M()Z
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1851
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private O()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1858
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1859
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private P()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1868
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1869
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1870
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1872
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    :goto_0
    return-object v1

    .line 1875
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1877
    invoke-static {p0, v3, v4}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    .line 1878
    if-eqz v0, :cond_3

    .line 1879
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 1882
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v6, :cond_1

    :goto_2
    move-object v1, v0

    .line 1892
    goto :goto_0

    .line 1885
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 1886
    const v1, 0x7f0b033e

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1888
    :cond_2
    const v1, 0x7f0b033f

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private Q()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1896
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    if-nez v1, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return-object v0

    .line 1899
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v1

    .line 1900
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->localizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private R()V
    .locals 1

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->u()V

    .line 2001
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->f()V

    .line 2003
    return-void
.end method

.method private S()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2007
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->o:Landroid/widget/ImageButton;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2008
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2009
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2010
    iput-object v2, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    .line 2011
    iput-object v2, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 2012
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1924
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1925
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/facebook/katana/ComposerActivity$MetaText;

    invoke-virtual {v5, v4, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/ComposerActivity$MetaText;

    .line 1927
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1928
    array-length v6, v0

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 1929
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1930
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 1928
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 1934
    :cond_0
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static a(Landroid/net/Uri;)Landroid/location/Location;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 366
    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 368
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Landroid/location/Location;

    const-string v3, "photo-exif"

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 372
    const/4 v3, 0x0

    aget v3, v2, v3

    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 373
    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 376
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p0}, Lcom/facebook/katana/ComposerActivity;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 1166
    const-string v0, "composer_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ComposerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1168
    const-string v1, "user_profile_last_update"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1170
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->j:Ljava/util/List;

    .line 1051
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1052
    const-string v0, "result_tags"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1054
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 1055
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1056
    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoTag;

    .line 1057
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoTag;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->j:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->t()V

    .line 1066
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2016
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2017
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->o:Landroid/widget/ImageButton;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2018
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    .line 623
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->D:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->D:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    if-eqz p1, :cond_0

    .line 634
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity;->D:Landroid/location/Location;

    .line 636
    const/4 v0, 0x0

    const-string v1, "latitude=\'%f\' and longitude=\'%f\' and type in (\'%s\',\'%s\')"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/facebook/katana/model/GeoRegion$Type;->city:Lcom/facebook/katana/model/GeoRegion$Type;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/facebook/katana/model/GeoRegion$Type;->state:Lcom/facebook/katana/model/GeoRegion$Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/service/method/FqlGetNearbyRegions;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->C:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 559
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 560
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 562
    if-ltz p3, :cond_0

    .line 563
    aget v0, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p3

    .line 568
    :goto_0
    if-gez v0, :cond_3

    move v1, v2

    .line 572
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    if-ltz p3, :cond_1

    .line 575
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 579
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    if-eqz p4, :cond_2

    .line 584
    const v0, 0x7f040017

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 585
    new-instance v1, Lcom/facebook/katana/ComposerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/ComposerActivity$1;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 596
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 598
    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 566
    aget v0, v0, v2

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    goto :goto_0

    .line 577
    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 593
    :cond_2
    const v0, 0x7f040016

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/ComposerActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0b0341

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x21

    .line 1733
    if-eqz p1, :cond_5

    .line 1734
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1740
    :goto_0
    const/4 v2, 0x0

    .line 1741
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->M()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->P()Ljava/lang/String;

    move-result-object v1

    .line 1742
    :goto_1
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->Q()Ljava/lang/String;

    move-result-object v3

    .line 1744
    iget-boolean v4, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-nez v4, :cond_9

    .line 1745
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v4, :cond_7

    .line 1746
    const v2, 0x7f0b0340

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v2, v4}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1762
    :cond_0
    :goto_2
    if-eqz v2, :cond_4

    .line 1763
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, " \u2014 "

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1765
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1768
    new-instance v2, Lcom/facebook/katana/ComposerActivity$MetaText;

    const v5, 0x7f09003b

    invoke-direct {v2, p0, v5}, Lcom/facebook/katana/ComposerActivity$MetaText;-><init>(Lcom/facebook/katana/ComposerActivity;I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1771
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090032

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1774
    if-eqz v1, :cond_1

    .line 1775
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1777
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1780
    new-instance v6, Lcom/facebook/katana/ComposerActivity$22;

    invoke-direct {v6, p0}, Lcom/facebook/katana/ComposerActivity$22;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v4, v6, v5, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1795
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_2

    .line 1796
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1799
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v6, v6, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1802
    new-instance v5, Lcom/facebook/katana/ComposerActivity$23;

    invoke-direct {v5, p0}, Lcom/facebook/katana/ComposerActivity$23;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    iget-object v6, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v6, v6, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v5, v1, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1817
    :cond_2
    if-eqz v3, :cond_3

    .line 1818
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1819
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v4, v5, v1, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1822
    new-instance v2, Lcom/facebook/katana/ComposerActivity$24;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$24;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v4, v2, v1, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1843
    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1846
    :cond_4
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1847
    return-void

    .line 1736
    :cond_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->O()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1741
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1747
    :cond_7
    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v4, :cond_8

    if-nez v1, :cond_8

    .line 1748
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v9, v2}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1749
    :cond_8
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v4, :cond_0

    .line 1750
    const v2, 0x7f0b0342

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1753
    :cond_9
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v4, :cond_a

    move-object v2, v3

    .line 1754
    goto/16 :goto_2

    .line 1755
    :cond_a
    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v4, :cond_b

    if-nez v3, :cond_b

    .line 1756
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v9, v2}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1757
    :cond_b
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v4, :cond_0

    .line 1758
    const v2, 0x7f0b01c5

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v6

    iget-object v5, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-object v5, v5, Lcom/facebook/katana/model/FacebookPlace;->mName:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method private static b(Landroid/net/Uri;)J
    .locals 5
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 386
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 387
    const-string v3, "GPSDateStamp"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    const-string v4, "GPSTimeStamp"

    invoke-virtual {v2, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    :goto_0
    if-nez v2, :cond_2

    .line 406
    :cond_0
    :goto_1
    return-wide v0

    .line 393
    :cond_1
    const-string v3, "DateTime"

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 398
    :cond_2
    sget-object v3, Lcom/facebook/katana/ComposerActivity;->Q:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 399
    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    .line 406
    :catch_0
    move-exception v2

    goto :goto_1

    .line 404
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/katana/ComposerActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/facebook/katana/ComposerActivity;->I:J

    return-wide p1
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 1905
    const-string v0, "composer_temp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->J()V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    .line 1076
    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->K()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/ComposerActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/net/Uri;)J
    .locals 4
    .parameter

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/activity/media/Storage;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 420
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 421
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 2065
    new-instance v0, Lcom/facebook/katana/ComposerActivity$25;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ComposerActivity$25;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity$25;->start()V

    .line 2079
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/ComposerActivity;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->C:Ljava/util/LinkedList;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->L:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method static synthetic e(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/binding/AppSession;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/katana/ComposerActivity;)[Lcom/facebook/katana/model/FacebookPhotoTag;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->B()[Lcom/facebook/katana/model/FacebookPhotoTag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/katana/ComposerActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->P:J

    return-wide v0
.end method

.method static synthetic j(Lcom/facebook/katana/ComposerActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->B:J

    return-wide v0
.end method

.method static synthetic k(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->I()V

    return-void
.end method

.method static synthetic l(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->C()V

    return-void
.end method

.method static synthetic m(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/TimeAdapter;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    return-object v0
.end method

.method static synthetic n(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->D()V

    return-void
.end method

.method static synthetic o(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->G()V

    return-void
.end method

.method static synthetic p(Lcom/facebook/katana/ComposerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->K:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookAlbum;
    .locals 1
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookPlace;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    return-object v0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 448
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 449
    if-nez v1, :cond_1

    .line 450
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 452
    :cond_1
    if-ne v1, v3, :cond_2

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 452
    :cond_2
    const v2, 0x7f0b01c2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/facebook/katana/ComposerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic s(Lcom/facebook/katana/ComposerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    return v0
.end method

.method static synthetic t(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 462
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 463
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->N()I

    move-result v1

    if-lez v1, :cond_0

    .line 464
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic u(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 472
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 473
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_0

    .line 474
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic v(Lcom/facebook/katana/ComposerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 493
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    return-void
.end method

.method static synthetic w(Lcom/facebook/katana/ComposerActivity;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    return-object v0
.end method

.method private w()V
    .locals 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v0, :cond_0

    .line 499
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 500
    const v1, 0x7f08009d

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 503
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    sget-object v3, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    if-ne v2, v3, :cond_1

    const v2, 0x7f0b01bb

    invoke-virtual {p0, v2}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    const/16 v2, 0x44

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/view/View;Landroid/view/View;IZ)V

    .line 511
    :cond_0
    return-void

    .line 503
    :cond_1
    const v2, 0x7f0b01ba

    invoke-virtual {p0, v2}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic x(Lcom/facebook/katana/ComposerActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 516
    :cond_0
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 517
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 519
    const/16 v2, 0x38

    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/view/View;Landroid/view/View;IZ)V

    .line 521
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 665
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 666
    invoke-static {p0}, Lcom/facebook/katana/ComposerActivity;->c(Landroid/content/Context;)V

    .line 668
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->L:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 670
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_session_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->h()V

    .line 676
    :cond_0
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 677
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->setContentView(I)V

    .line 679
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_composer_initial_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_composer_initial_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vault_image_fbid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->P:J

    .line 685
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_checkin"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    .line 686
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    .line 687
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->O:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$2;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->o:Landroid/widget/ImageButton;

    .line 715
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$3;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$4;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$5;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    .line 782
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$6;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$7;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$8;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$9;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$9;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_new_plan"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    .line 821
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v0, :cond_2

    .line 822
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->h:Ljava/util/List;

    .line 826
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->h:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;

    invoke-direct {v1, p0, v6}, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;-><init>(Lcom/facebook/katana/ComposerActivity;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    .line 829
    new-instance v1, Lcom/facebook/katana/model/FacebookProfile;

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    iput-object v1, p0, Lcom/facebook/katana/ComposerActivity;->g:Lcom/facebook/katana/model/FacebookProfile;

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->J:Ljava/util/List;

    .line 831
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->K:Landroid/os/Handler;

    .line 833
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v0, :cond_3

    .line 834
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0b01f3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 838
    :cond_3
    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iput-object v3, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    .line 841
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->H()V

    .line 843
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    iget-object v4, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 851
    :cond_4
    if-eqz p1, :cond_5

    .line 852
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    .line 854
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->m:Landroid/location/Location;

    .line 856
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->r:Z

    .line 857
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    .line 859
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    .line 860
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    .line 861
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->R()V

    .line 864
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    if-eqz v0, :cond_6

    .line 866
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_WITH_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 867
    invoke-virtual {p0, v3}, Lcom/facebook/katana/ComposerActivity;->launchPlacesNearby(Landroid/view/View;)V

    .line 870
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 871
    const-string v0, "extra_photo_request_code"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 872
    if-ne v1, v2, :cond_c

    .line 873
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    move v0, v1

    .line 896
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 897
    sget-object v1, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_PHOTO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v1, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 898
    invoke-direct {p0, v4}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/content/Intent;)V

    .line 899
    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    .line 900
    new-instance v0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 904
    :cond_7
    const-string v0, "extra_video_request_code"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 905
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 906
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 925
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-eqz v0, :cond_9

    .line 926
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 927
    new-instance v0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 930
    :cond_9
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->K()V

    .line 932
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$10;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$10;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_fixed_audience_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->B:J

    .line 943
    new-instance v0, Lcom/facebook/katana/features/composer/AudienceAdapter;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/facebook/katana/features/composer/MinorStatus;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/features/composer/AudienceAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    .line 945
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;)Lcom/facebook/katana/service/method/AudienceSettings;

    move-result-object v1

    .line 948
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/OverlaySelectorView;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    .line 950
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v2, Lcom/facebook/katana/ComposerActivity$11;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$11;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 968
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/OverlaySelectorView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 969
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v2, Lcom/facebook/katana/ComposerActivity$12;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ComposerActivity$12;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnFillerClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    iget-wide v2, p0, Lcom/facebook/katana/ComposerActivity;->B:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_a

    .line 979
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 982
    :cond_a
    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/service/method/AudienceSettings;)V

    .line 985
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v0, :cond_b

    .line 987
    iput-wide v8, p0, Lcom/facebook/katana/ComposerActivity;->I:J

    .line 988
    invoke-static {p0}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->createPeriodsTimeAdapter(Landroid/content/Context;)Lcom/facebook/katana/features/composer/TimeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    .line 989
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/OverlaySelectorView;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    .line 991
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$13;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$13;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1008
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    new-instance v1, Lcom/facebook/katana/ComposerActivity$14;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$14;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setOnFillerClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setSectionedListAdapter(Lcom/facebook/katana/ui/SectionedListAdapter;)V

    .line 1017
    :cond_b
    const v0, 0x7f0b01b4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/facebook/katana/ComposerActivity;->a(ILjava/lang/String;)V

    .line 1019
    new-instance v0, Lcom/facebook/katana/ComposerActivity$15;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ComposerActivity$15;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->E:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    .line 1031
    invoke-static {p0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    .line 1032
    return-void

    .line 874
    :cond_c
    const/4 v0, 0x3

    if-ne v1, v0, :cond_d

    .line 876
    const-string v0, "vault_preview_bytes"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 878
    invoke-direct {p0, v0}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/graphics/Bitmap;)V

    .line 879
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    move v0, v1

    .line 880
    goto/16 :goto_0

    :cond_d
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 884
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    .line 886
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-eqz v0, :cond_12

    .line 887
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 889
    :goto_2
    if-eqz v0, :cond_e

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    move v0, v2

    goto/16 :goto_0

    .line 892
    :cond_e
    iput-object v3, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    move v0, v2

    goto/16 :goto_0

    .line 907
    :cond_f
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 911
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 914
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-eqz v0, :cond_11

    .line 915
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/Storage;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 918
    :goto_3
    if-eqz v0, :cond_10

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    goto/16 :goto_1

    .line 921
    :cond_10
    iput-object v3, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_11
    move-object v0, v3

    goto :goto_3

    :cond_12
    move-object v0, v3

    goto :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method protected final a(Lcom/facebook/katana/service/method/AudienceSettings;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1973
    if-nez p1, :cond_0

    .line 1993
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/service/method/AudienceSettings;)V

    .line 1978
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/AudienceSettings;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Ljava/util/List;)V

    .line 1979
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/AudienceSettings;->h()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/model/PrivacySetting;)V

    .line 1980
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    iput-boolean v4, v0, Lcom/facebook/katana/features/composer/AudienceAdapter;->a:Z

    .line 1981
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->i()V

    .line 1983
    iget-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->B:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1984
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    iget-wide v1, p0, Lcom/facebook/katana/ComposerActivity;->B:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(J)Z

    move-result v0

    .line 1985
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1986
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1988
    iput-boolean v4, p0, Lcom/facebook/katana/ComposerActivity;->H:Z

    .line 1991
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->j()V

    .line 1992
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->i()V

    goto :goto_0
.end method

.method public closeAudienceSelector(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1587
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->C()V

    .line 1588
    return-void
.end method

.method public closeTimeSelector(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->D()V

    .line 1595
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 426
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->r:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_2

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->v()V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-nez v1, :cond_1

    .line 433
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    iget-object v1, v1, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 5

    .prologue
    .line 481
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 482
    iget-wide v1, p0, Lcom/facebook/katana/ComposerActivity;->I:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v1, 0x7f02008f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 486
    return-void

    .line 482
    :cond_0
    const v1, 0x7f020090

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 525
    sget-object v0, Lcom/facebook/katana/features/UserSeenNux$Project;->EVENT_TAG_EXPANSION:Lcom/facebook/katana/features/UserSeenNux$Project;

    invoke-static {p0, v0}, Lcom/facebook/katana/features/UserSeenNux;->a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)Ljava/lang/Boolean;

    move-result-object v1

    .line 528
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->f()Lcom/facebook/katana/features/composer/AudienceOption;

    move-result-object v0

    .line 530
    invoke-interface {v0}, Lcom/facebook/katana/features/composer/AudienceOption;->c()Lcom/facebook/katana/features/composer/AudienceOption$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    if-eq v2, v3, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    check-cast v0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    .line 535
    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->d()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v0

    .line 536
    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v2, "ALL_FRIENDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    const v3, 0x7f0b01bd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 548
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    const/16 v3, -0x38

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/view/View;Landroid/view/View;IZ)V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    const v3, 0x7f0b01bc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    goto :goto_1
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->g()I

    move-result v1

    .line 1714
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 1715
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1716
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1718
    :cond_0
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2224
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2235
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->h:Ljava/lang/String;

    return-object v0
.end method

.method public launchPlacesNearby(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1671
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1672
    const-string v1, "launched_for_place"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1674
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v1, :cond_0

    .line 1675
    const-string v1, "extra_place"

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1677
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/net/Uri;)Landroid/location/Location;

    move-result-object v1

    .line 1679
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->b(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1680
    const-string v4, "preset_search_location"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1681
    const-string v1, "preset_search_time"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1682
    const-string v1, "search_type"

    sget-object v2, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->PHOTO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1699
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1700
    return-void

    .line 1684
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 1685
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 1686
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/facebook/katana/ComposerActivity;->c(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1687
    const-string v3, "preset_search_location"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1688
    const-string v3, "preset_search_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1689
    const-string v1, "search_type"

    sget-object v2, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->VIDEO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1691
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v1, :cond_3

    .line 1692
    const-string v1, "search_type"

    sget-object v2, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1695
    :cond_3
    const-string v1, "search_type"

    sget-object v2, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->STATUS:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1207
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1208
    if-nez p2, :cond_1

    .line 1209
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->finish()V

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    if-nez p3, :cond_2

    .line 1215
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 1217
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1219
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 1220
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 1226
    invoke-static {v0}, Lcom/facebook/katana/util/IntentUtils;->a([J)Ljava/util/Set;

    move-result-object v1

    .line 1227
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1228
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1230
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 1233
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1237
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1240
    :cond_4
    iput-object v1, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    .line 1241
    invoke-direct {p0, v7}, Lcom/facebook/katana/ComposerActivity;->a(Ljava/lang/String;)V

    .line 1242
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->s()V

    .line 1243
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->t()V

    goto :goto_0

    .line 1249
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 1250
    const-string v0, "extra_xed_location"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->r:Z

    .line 1252
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->r:Z

    if-eqz v0, :cond_6

    .line 1253
    iput-object v7, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    .line 1254
    iput-object v7, p0, Lcom/facebook/katana/ComposerActivity;->m:Landroid/location/Location;

    .line 1255
    iput-object v7, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    .line 1256
    iput-boolean v2, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    .line 1280
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->R()V

    .line 1281
    iput-boolean v2, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    goto/16 :goto_0

    .line 1258
    :cond_6
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1259
    const-string v0, "extra_place"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    .line 1261
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPlace;->d()Lcom/facebook/katana/model/FacebookEvent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1262
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_EVENT_EDUCATION_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 1264
    :cond_7
    const-string v0, "extra_nearby_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1265
    const-string v0, "extra_nearby_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->m:Landroid/location/Location;

    .line 1269
    :cond_8
    const-string v0, "extra_implicit_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1271
    iput-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    .line 1272
    const-string v0, "extra_implicit_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    goto :goto_2

    .line 1274
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v0, :cond_5

    .line 1277
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->J()V

    goto :goto_2

    .line 1286
    :sswitch_2
    iput-object v7, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    .line 1287
    iput-object v7, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 1288
    invoke-direct {p0, p3}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/content/Intent;)V

    .line 1289
    if-ne p2, v1, :cond_a

    .line 1290
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    .line 1291
    iput-boolean v2, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    .line 1292
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_PHOTO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 1293
    new-instance v0, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ComposerActivity$PhotoThumbnailerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1294
    :cond_a
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1295
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    .line 1296
    iput-boolean v2, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    .line 1297
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->TAG_VIDEO_PLACE_TIP:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    .line 1298
    new-instance v0, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ComposerActivity$VideoThumbnailerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1303
    :sswitch_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    .line 1304
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->S()V

    .line 1306
    :cond_b
    invoke-direct {p0, p3}, Lcom/facebook/katana/ComposerActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1217
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7b -> :sswitch_2
        0x7c -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    sget-object v1, Lcom/facebook/katana/ComposerActivity$OverlayMode;->AUDIENCE_SELECTOR:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    if-ne v0, v1, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->C()V

    .line 1958
    :goto_0
    return-void

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    sget-object v1, Lcom/facebook/katana/ComposerActivity$OverlayMode;->TIME_SELECTOR:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    if-ne v0, v1, :cond_1

    .line 1944
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->D()V

    goto :goto_0

    .line 1948
    :cond_1
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->O()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->N()I

    move-result v0

    if-lez v0, :cond_3

    .line 1953
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->F()V

    goto :goto_0

    .line 1957
    :cond_3
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 1496
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1497
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1499
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1500
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/ComposerEditText;

    invoke-virtual {v0, v2}, Lcom/facebook/katana/ui/ComposerEditText;->setImeOptions(I)V

    .line 1502
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    if-eqz v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->J()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1458
    packed-switch p1, :pswitch_data_0

    .line 1476
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1460
    :pswitch_0
    new-instance v5, Lcom/facebook/katana/ComposerActivity$17;

    invoke-direct {v5, p0}, Lcom/facebook/katana/ComposerActivity$17;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    .line 1469
    const v0, 0x7f0b01be

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0b01bf

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b01c0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v7, v6

    move-object v8, v6

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1458
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->J:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1486
    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1491
    :cond_1
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 1492
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1175
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 1178
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->E:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 1186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1187
    new-instance v1, Lcom/facebook/katana/ComposerActivity$16;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$16;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1196
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1200
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 1201
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1121
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 1124
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    .line 1126
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 1127
    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 1130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->E()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1131
    const-wide/32 v2, 0x6ddd00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->f:Lcom/facebook/katana/binding/AppSession;

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)V

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v0, :cond_3

    .line 1140
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->J()V

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1145
    invoke-static {p0}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1146
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ComposerActivity;->showDialog(I)V

    .line 1149
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    iget-boolean v0, v0, Lcom/facebook/katana/features/composer/AudienceAdapter;->a:Z

    if-nez v0, :cond_5

    .line 1150
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Landroid/content/Context;Lcom/facebook/katana/model/PrivacySetting$Category;)Lcom/facebook/katana/service/method/AudienceSettings;

    .line 1153
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1154
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->E:Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;

    invoke-static {p0, v0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 1156
    :cond_6
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1091
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1092
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1093
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1094
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1095
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1096
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1097
    sget-object v0, Lcom/facebook/katana/ComposerActivity$StateKeys;->f:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/facebook/katana/ComposerActivity;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1098
    return-void
.end method

.method public onUserInteraction()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 603
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onUserInteraction()V

    .line 604
    iget-wide v0, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->u:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    const-wide/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->L()V

    .line 610
    :cond_0
    iput-wide v6, p0, Lcom/facebook/katana/ComposerActivity;->t:J

    .line 612
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1102
    sget-object v0, Lcom/facebook/katana/ComposerActivity$26;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    invoke-virtual {v1}, Lcom/facebook/katana/ComposerActivity$TipMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1117
    :goto_0
    return-void

    .line 1104
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->x()V

    .line 1105
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    goto :goto_0

    .line 1109
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->w()V

    .line 1110
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    goto :goto_0

    .line 1113
    :pswitch_2
    invoke-virtual {p0}, Lcom/facebook/katana/ComposerActivity;->i()V

    .line 1114
    sget-object v0, Lcom/facebook/katana/ComposerActivity$TipMode;->NONE:Lcom/facebook/katana/ComposerActivity$TipMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->v:Lcom/facebook/katana/ComposerActivity$TipMode;

    goto :goto_0

    .line 1102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public openAudienceSelector(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1562
    sget-object v0, Lcom/facebook/katana/ComposerActivity$OverlayMode;->AUDIENCE_SELECTOR:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    .line 1563
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->I()V

    .line 1564
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setVisibility(I)V

    .line 1566
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->A:Lcom/facebook/katana/ui/OverlaySelectorView;

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1569
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->L:Lcom/facebook/katana/util/logging/InteractionLogger;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Ljava/lang/String;Z)V

    .line 1571
    return-void
.end method

.method public openTagFriends(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->G()V

    .line 1541
    return-void
.end method

.method public openTimeSelector(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1575
    sget-object v0, Lcom/facebook/katana/ComposerActivity$OverlayMode;->TIME_SELECTOR:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    iput-object v0, p0, Lcom/facebook/katana/ComposerActivity;->y:Lcom/facebook/katana/ComposerActivity$OverlayMode;

    .line 1576
    invoke-direct {p0}, Lcom/facebook/katana/ComposerActivity;->I()V

    .line 1577
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity;->z:Lcom/facebook/katana/ui/OverlaySelectorView;

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/OverlaySelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1580
    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 21
    .parameter

    .prologue
    .line 1315
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->O()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v9

    .line 1318
    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/katana/ComposerActivity;->d(Ljava/lang/String;)V

    .line 1320
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1321
    const v2, 0x7f0b01b5

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1330
    :cond_2
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1331
    const-string v2, "extra_status_text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    const-string v2, "extra_tagged_ids"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    invoke-static {v3}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v2, :cond_b

    .line 1336
    const-string v2, "extra_place"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->m:Landroid/location/Location;

    if-eqz v2, :cond_3

    .line 1340
    const-string v2, "extra_tagged_location"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity;->m:Landroid/location/Location;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1349
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/ComposerActivity;->r:Z

    if-eqz v2, :cond_4

    .line 1350
    const-string v2, "extra_xed_location"

    const-string v3, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/features/composer/AudienceAdapter;->h()[I

    move-result-object v2

    .line 1357
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/facebook/katana/ComposerActivity;->H:Z

    if-nez v3, :cond_d

    .line 1358
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/facebook/katana/ComposerActivity;->B:J

    .line 1366
    :goto_3
    const/4 v4, 0x0

    .line 1367
    const/4 v3, 0x0

    .line 1368
    if-eqz v2, :cond_13

    .line 1369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    const/4 v6, 0x0

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-virtual {v5, v6, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter;->c(II)Lcom/facebook/katana/features/composer/AudienceOption;

    move-result-object v2

    .line 1372
    invoke-interface {v2}, Lcom/facebook/katana/features/composer/AudienceOption;->c()Lcom/facebook/katana/features/composer/AudienceOption$Type;

    move-result-object v5

    sget-object v6, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    if-ne v5, v6, :cond_e

    .line 1373
    check-cast v2, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    .line 1375
    invoke-virtual {v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->d()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v2

    move-object v4, v2

    .line 1382
    :cond_5
    :goto_4
    if-eqz v4, :cond_13

    .line 1383
    const-string v2, "CUSTOM"

    iget-object v5, v4, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1384
    invoke-virtual {v4}, Lcom/facebook/katana/model/PrivacySetting;->n()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1393
    :goto_5
    const-string v2, "extra_status_privacy"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->n:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/features/composer/AudienceAdapter;->e()Lcom/facebook/katana/service/method/AudienceSettings;

    move-result-object v7

    .line 1399
    if-eqz v7, :cond_6

    .line 1400
    invoke-virtual {v7, v4}, Lcom/facebook/katana/service/method/AudienceSettings;->a(Lcom/facebook/katana/model/PrivacySetting;)V

    .line 1401
    invoke-virtual {v7}, Lcom/facebook/katana/service/method/AudienceSettings;->j()Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lcom/facebook/katana/model/PrivacySetting$Category;->composer_sticky:Lcom/facebook/katana/model/PrivacySetting$Category;

    const-string v6, ""

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v7}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    move-object v6, v8

    .line 1406
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/ComposerActivity;->F:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-nez v2, :cond_10

    .line 1410
    const-string v2, "extra_is_checkin"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1417
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    if-eqz v2, :cond_8

    .line 1418
    new-instance v2, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/ComposerActivity;->x:Landroid/net/Uri;

    move-object/from16 v3, p0

    move-object v5, v9

    move-wide v7, v13

    invoke-direct/range {v2 .. v8}, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;-><init>(Lcom/facebook/katana/ComposerActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/facebook/katana/ComposerActivity$ComposerPhotoUploads;->start()V

    .line 1420
    const-string v2, "is_uploading_media"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1422
    const v2, 0x7f0b03b6

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 1429
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    if-eqz v2, :cond_a

    .line 1430
    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->O()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1431
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1432
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 1436
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->l:Lcom/facebook/katana/model/FacebookPlace;

    iget-wide v0, v2, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    move-wide/from16 v17, v0

    .line 1437
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->w:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/activity/media/Storage;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/katana/ComposerActivity;->k:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v7, p0

    move-object/from16 v16, v6

    invoke-static/range {v7 .. v19}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Collection;Ljava/lang/String;JLjava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->N:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/katana/util/logging/CameraFlowLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/CameraFlowLogger;->i()V

    .line 1442
    const-string v2, "is_uploading_media"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1443
    const v2, 0x7f0b03b7

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 1446
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/ComposerActivity;->s:Z

    if-eqz v2, :cond_12

    const-string v2, "1"

    .line 1448
    :goto_9
    const-string v3, "composer_share_location"

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/facebook/katana/ComposerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->finish()V

    goto/16 :goto_0

    .line 1343
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    if-eqz v2, :cond_3

    .line 1344
    const-string v2, "extra_tagged_place_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity;->q:Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    iget-object v3, v3, Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;->b:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1353
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1363
    :cond_d
    const-wide/16 v13, -0x1

    goto/16 :goto_3

    .line 1376
    :cond_e
    invoke-interface {v2}, Lcom/facebook/katana/features/composer/AudienceOption;->c()Lcom/facebook/katana/features/composer/AudienceOption$Type;

    move-result-object v5

    sget-object v6, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    if-ne v5, v6, :cond_5

    .line 1377
    check-cast v2, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;

    .line 1379
    invoke-virtual {v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->d()Lcom/facebook/katana/model/FriendList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FriendList;->b()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_4

    .line 1387
    :cond_f
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "value"

    iget-object v6, v4, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v8, v2

    .line 1391
    goto/16 :goto_5

    .line 1389
    :catch_0
    move-exception v2

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/ComposerActivity;->r()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inconceivable JSON exception"

    invoke-static {v5, v6, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v3

    goto/16 :goto_5

    .line 1411
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/katana/ComposerActivity;->G:Z

    if-eqz v2, :cond_7

    .line 1412
    const-string v2, "extra_is_new_plan"

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1413
    const-string v2, "extra_plan_time_granularity"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/ComposerActivity;->p:Lcom/facebook/katana/features/composer/TimeAdapter;

    invoke-virtual {v3}, Lcom/facebook/katana/features/composer/TimeAdapter;->f()Lcom/facebook/katana/features/composer/TimeAdapter$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/features/composer/TimeAdapter$Period;->getGranularity()I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    const-string v2, "extra_plan_timestamp"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/facebook/katana/ComposerActivity;->I:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_7

    .line 1436
    :cond_11
    const-wide/16 v17, -0x1

    goto/16 :goto_8

    .line 1446
    :cond_12
    const-string v2, ""

    goto/16 :goto_9

    :cond_13
    move-object v6, v3

    goto/16 :goto_6
.end method
