.class public Lcom/facebook/orca/compose/ComposeFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ComposeFragment.java"


# static fields
.field private static J:I

.field private static K:I

.field private static L:I

.field private static final au:[I

.field private static final av:[I


# instance fields
.field private M:Lcom/facebook/orca/cache/DataCache;

.field private N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

.field private O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

.field private Q:Landroid/support/v4/app/FragmentManager;

.field private R:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private S:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

.field private T:Lcom/facebook/orca/presence/PresenceManager;

.field private U:Lcom/facebook/orca/prefs/UiCounters;

.field private V:Landroid/location/LocationManager;

.field private W:Landroid/view/LayoutInflater;

.field private X:Lcom/facebook/orca/push/common/PushDeserialization;

.field private Y:Landroid/view/View;

.field private Z:Landroid/widget/EditText;

.field private aa:Landroid/widget/ImageButton;

.field private ab:Landroid/widget/ImageButton;

.field private ac:Landroid/widget/Button;

.field private ad:Landroid/widget/TextView;

.field private ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

.field private af:Ljava/lang/String;

.field private ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

.field private ah:Lcom/facebook/orca/attachments/MediaAttachment;

.field private ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

.field private aj:Landroid/location/Location;

.field private ak:Ljava/lang/Boolean;

.field private al:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

.field private am:Lcom/facebook/orca/compose/LocationNuxController;

.field private an:Lcom/facebook/orca/compose/ComposeMode;

.field private ao:Lcom/facebook/orca/users/UserKey;

.field private ap:Z

.field private aq:I

.field private ar:J

.field private as:J

.field private at:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const/16 v0, 0x1388

    .line 90
    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->J:I

    const/16 v0, 0x1356

    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->K:I

    .line 91
    sget v0, Lcom/facebook/orca/compose/ComposeFragment;->J:I

    add-int/lit8 v0, v0, -0x14

    sput v0, Lcom/facebook/orca/compose/ComposeFragment;->L:I

    .line 515
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/facebook/orca/compose/ComposeFragment;->au:[I

    .line 516
    new-array v0, v2, [I

    sput-object v0, Lcom/facebook/orca/compose/ComposeFragment;->av:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 135
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->INIT:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    return-void
.end method

.method private H()V
    .locals 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Z

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->R:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Lcom/facebook/orca/users/UserKey;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ap:Z

    .line 437
    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    .prologue
    .line 480
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;-><init>(Z)V

    .line 481
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/orca/R$string;->image_attachment_attach_image:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Ljava/lang/String;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 482
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    if-eqz v1, :cond_0

    .line 483
    sget-object v1, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->REMOVE:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaParams;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)Lcom/facebook/orca/photos/picking/PickMediaParams;

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaParams;)V

    .line 487
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 491
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Landroid/widget/ImageButton;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_composer_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 492
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 493
    return-void
.end method

.method private K()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 560
    const/4 v1, 0x0

    .line 561
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->O()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 569
    :goto_0
    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->S()V

    .line 572
    :cond_0
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 566
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private L()V
    .locals 3

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->M()V

    .line 622
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->N()V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 607
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v1

    .line 609
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v2

    .line 610
    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 611
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 613
    :cond_2
    if-eqz v0, :cond_4

    .line 614
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Ljava/lang/Boolean;

    .line 615
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->S()V

    .line 616
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->U:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "enabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 618
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Ljava/lang/Boolean;

    .line 619
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->T()V

    .line 620
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->U:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "disabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private M()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 629
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->W:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_location_services_composer_dialog_content:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 631
    sget v0, Lcom/facebook/orca/R$id;->text_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 632
    sget v3, Lcom/facebook/orca/R$string;->compose_location_services_setting_disabled_description:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 633
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    sget v3, Lcom/facebook/orca/R$string;->compose_location_services_disabled_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 635
    sget v3, Lcom/facebook/orca/R$string;->dialog_enable:I

    new-instance v4, Lcom/facebook/orca/compose/ComposeFragment$9;

    invoke-direct {v4, p0}, Lcom/facebook/orca/compose/ComposeFragment$9;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    sget v3, Lcom/facebook/orca/R$string;->dialog_not_now:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 646
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 647
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 648
    return-void
.end method

.method private N()V
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->e(Ljava/lang/String;)V

    .line 663
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.settings.SETTINGS"

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private O()Z
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()Z
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method private Q()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 729
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 730
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 731
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->V:Landroid/location/LocationManager;

    invoke-virtual {v2, v1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 732
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private R()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 749
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 751
    :cond_0
    return-void
.end method

.method private S()V
    .locals 3

    .prologue
    .line 754
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->M:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/DataCache;->e()Landroid/location/Location;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_1

    .line 756
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/ops/OrcaServiceFragment;->b()Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 762
    invoke-static {}, Lcom/facebook/orca/server/GetDeviceLocationParams;->newBuilder()Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(I)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a(J)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->c()Lcom/facebook/orca/server/GetDeviceLocationParams;

    move-result-object v0

    .line 766
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 767
    const-string v2, "getDeviceLocationParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 768
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

    const-string v2, "get_device_location"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 770
    :cond_0
    return-void

    .line 758
    :cond_1
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    goto :goto_0
.end method

.method private T()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    iput-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/location/Location;

    .line 774
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 775
    return-void
.end method

.method private U()V
    .locals 2

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Y()V

    .line 821
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->W()V

    .line 822
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 823
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    .line 824
    return-void
.end method

.method private V()V
    .locals 4

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Z

    if-eqz v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$11;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$11;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Z

    goto :goto_0
.end method

.method private W()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 909
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .line 900
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 903
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 907
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private X()V
    .locals 2

    .prologue
    .line 912
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 913
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y()V
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 917
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 918
    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->K:I

    if-le v0, v1, :cond_1

    .line 919
    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->L:I

    if-le v0, v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$color;->red_warning_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    sget v2, Lcom/facebook/orca/compose/ComposeFragment;->J:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    :goto_1
    return-void

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/orca/R$color;->grey53:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private Z()V
    .locals 5

    .prologue
    .line 933
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sget v1, Lcom/facebook/orca/compose/ComposeFragment;->J:I

    if-le v0, v1, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->U:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne v0, v1, :cond_2

    .line 939
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->M:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Landroid/location/Location;J)V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;->a()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    .line 541
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    .line 543
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    .line 544
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 545
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 547
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 549
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 550
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 551
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 552
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 553
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->f(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/attachments/MediaAttachmentFactory;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 737
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 739
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/MediaAttachment;)V
    .locals 3
    .parameter

    .prologue
    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 498
    if-nez p1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 513
    :goto_0
    return-void

    .line 504
    :cond_0
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    .line 506
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    .line 508
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :goto_1
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    goto :goto_0

    .line 510
    :cond_1
    const-string v0, "orca:ComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to preview from attachment at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 778
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 779
    iput-object p2, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/location/Location;

    .line 781
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/orca/R$drawable;->orca_composer_location_off:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 795
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Lcom/facebook/orca/compose/LocationNuxController;

    if-eqz v0, :cond_1

    .line 796
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Lcom/facebook/orca/compose/LocationNuxController;

    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq p1, v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/facebook/orca/compose/LocationNuxController;->a(ZZ)V

    .line 800
    :cond_1
    return-void

    .line 784
    :cond_2
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/orca/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 787
    :cond_3
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_4

    .line 788
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/orca/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 790
    :cond_4
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-ne p1, v0, :cond_0

    .line 791
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 792
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    sget v3, Lcom/facebook/orca/R$drawable;->orca_composer_location_on:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 796
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Lcom/facebook/orca/attachments/MediaAttachment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->R()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Landroid/view/View;Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    .line 817
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 828
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->H()V

    .line 829
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Lcom/facebook/orca/users/UserKey;

    if-nez v2, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 833
    if-eqz p1, :cond_2

    .line 834
    iput-wide v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:J

    .line 837
    :cond_2
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 839
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->o()Z

    move-result v5

    if-nez v5, :cond_4

    .line 847
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->T:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v4}, Lcom/facebook/orca/presence/PresenceManager;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    iget v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:I

    if-ne v4, v0, :cond_5

    .line 854
    iget v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:I

    if-ne v4, v1, :cond_0

    .line 855
    iget-wide v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 858
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->V()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 876
    const-string v1, "orca:ComposeView"

    const-string v2, "Exception sending typing notifications"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 841
    :cond_4
    :try_start_1
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-wide v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->as:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v0, v1

    .line 842
    goto :goto_1

    .line 866
    :cond_5
    iput v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:I

    .line 867
    iput-wide v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ar:J

    .line 869
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ao:Lcom/facebook/orca/users/UserKey;

    invoke-virtual {v2}, Lcom/facebook/orca/users/UserKey;->b()Ljava/lang/String;

    move-result-object v2

    .line 870
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->T:Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v3, v2, v0}, Lcom/facebook/orca/presence/PresenceManager;->a(Ljava/lang/String;I)V

    .line 871
    iget v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aq:I

    if-ne v0, v1, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->V()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/ComposeFragment;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->at:Z

    return v0
.end method

.method private b(Lcom/facebook/orca/attachments/MediaAttachment;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    .line 519
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/facebook/orca/attachments/MediaAttachment;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    sget v2, Lcom/facebook/orca/R$drawable;->orca_composer_overlay_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 527
    sget v3, Lcom/facebook/orca/R$drawable;->orca_composer_overlay_pressed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 531
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 533
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 534
    sget-object v3, Lcom/facebook/orca/compose/ComposeFragment;->au:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 535
    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment;->av:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private b(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    .line 743
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 745
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->J()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/compose/ComposeFragment;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/compose/ComposeMode;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Lcom/facebook/orca/compose/ComposeMode;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 477
    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->L()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 671
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 672
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->W:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_location_services_composer_dialog_content:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 674
    sget v0, Lcom/facebook/orca/R$id;->text_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 676
    if-eqz p1, :cond_0

    .line 677
    sget v4, Lcom/facebook/orca/R$string;->compose_location_services_phone_disabled_description:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 682
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    sget v3, Lcom/facebook/orca/R$string;->compose_location_services_disabled_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 684
    if-eqz p1, :cond_1

    .line 685
    sget v3, Lcom/facebook/orca/R$string;->compose_location_services_phone_disabled_go_to_settings_button:I

    new-instance v4, Lcom/facebook/orca/compose/ComposeFragment$10;

    invoke-direct {v4, p0, p1}, Lcom/facebook/orca/compose/ComposeFragment$10;-><init>(Lcom/facebook/orca/compose/ComposeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    sget v3, Lcom/facebook/orca/R$string;->dialog_cancel:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 699
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 700
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 701
    return-void

    .line 679
    :cond_0
    sget v4, Lcom/facebook/orca/R$string;->compose_location_services_phone_disabled_description2:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 696
    :cond_1
    sget v3, Lcom/facebook/orca/R$string;->dialog_ok:I

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4
    .parameter

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v0

    .line 804
    new-instance v1, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 805
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/facebook/orca/R$color;->notification_greyish_light:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 808
    invoke-virtual {v1, p1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 809
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 810
    invoke-virtual {v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->I()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->Z()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->U()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final E()Lcom/facebook/orca/threads/Message;
    .locals 11

    .prologue
    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    .line 419
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->X:Lcom/facebook/orca/push/common/PushDeserialization;

    const/16 v1, 0x384

    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment;->S:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v3}, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/location/Location;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->aj:Landroid/location/Location;

    :goto_0
    invoke-static {v7}, Lcom/facebook/orca/location/Coordinates;->a(Landroid/location/Location;)Lcom/facebook/orca/location/Coordinates;

    move-result-object v9

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v7}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v10

    :goto_1
    move-wide v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/orca/push/common/PushDeserialization;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/facebook/orca/location/Coordinates;Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/Message;

    move-result-object v0

    .line 428
    return-object v0

    :cond_0
    move-object v7, v8

    .line 419
    goto :goto_0

    :cond_1
    move-object v10, v8

    goto :goto_1
.end method

.method public final F()Z
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->J()V

    .line 447
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 448
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 449
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->K()V

    .line 450
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 209
    sget v0, Lcom/facebook/orca/R$layout;->orca_composer_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$2;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_container:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_edit_container:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_edit:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_button_location:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_button_camera:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Landroid/widget/ImageButton;

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_button_send:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Landroid/widget/Button;

    .line 234
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->compose_chars_left:I

    invoke-static {v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ad:Landroid/widget/TextView;

    .line 236
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeMode;)V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$3;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ab:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$4;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ac:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$5;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$6;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$6;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    const-string v0, "getLocationOperation"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/String;)Lcom/facebook/orca/ops/OrcaServiceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$7;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ae:Lcom/facebook/orca/ops/OrcaServiceFragment;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$8;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/ops/OrcaServiceFragment;->a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V

    .line 293
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V

    .line 295
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Y:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 155
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->M:Lcom/facebook/orca/cache/DataCache;

    .line 157
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    const-class v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 159
    const-class v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 160
    const-class v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    .line 161
    const-class v0, Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Q:Landroid/support/v4/app/FragmentManager;

    .line 162
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->R:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 163
    const-class v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->S:Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    .line 164
    const-class v0, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/presence/PresenceManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->T:Lcom/facebook/orca/presence/PresenceManager;

    .line 165
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->U:Lcom/facebook/orca/prefs/UiCounters;

    .line 166
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->V:Landroid/location/LocationManager;

    .line 167
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->W:Landroid/view/LayoutInflater;

    .line 168
    const-class v0, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/push/common/PushDeserialization;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->X:Lcom/facebook/orca/push/common/PushDeserialization;

    .line 169
    const-class v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Q:Landroid/support/v4/app/FragmentManager;

    const-string v1, "pickPhotoOperation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    .line 174
    const-string v0, "pickPhotoOperation"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ag:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    new-instance v1, Lcom/facebook/orca/compose/ComposeFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/ComposeFragment$1;-><init>(Lcom/facebook/orca/compose/ComposeFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;)V

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a(Z)V

    .line 202
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->al:Lcom/facebook/orca/compose/ComposeFragment$OnSendClickedListener;

    .line 412
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_2

    .line 399
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->K()V

    .line 407
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Lcom/facebook/orca/compose/ComposeMode;

    .line 408
    return-void

    .line 402
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/compose/LocationNuxController;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->am:Lcom/facebook/orca/compose/LocationNuxController;

    .line 416
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/MessageDraft;)V
    .locals 6
    .parameter

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->a()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1}, Lcom/facebook/orca/compose/MessageDraft;->b()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    .line 365
    invoke-direct {p0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->d(Ljava/lang/String;)V

    .line 366
    if-eqz v2, :cond_0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 369
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_2

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->b()V

    .line 377
    :cond_2
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const-string v3, "orca:ComposeView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot create attachment for draft: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 303
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 305
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 306
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 454
    :try_start_0
    const-string v0, "share_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_0
    const-string v0, "share_photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 459
    if-eqz v0, :cond_1

    .line 460
    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource;->a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 463
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->X()V
    :try_end_0
    .catch Lcom/facebook/orca/attachments/UnknownAttachmentTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    invoke-virtual {p0}, Lcom/facebook/orca/compose/ComposeFragment;->l()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->image_attachment_failed_attach_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->f(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;->WARNING:Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Ljava/lang/CharSequence;Lcom/facebook/orca/common/ui/widgets/AnchorableToast$ToastType;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment;->af:Ljava/lang/String;

    .line 385
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    sget v1, Lcom/facebook/orca/R$string;->composer_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 391
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->aa:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/compose/MessageDraft;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->Z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 355
    :goto_0
    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 358
    :goto_1
    return-object v1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    new-instance v1, Lcom/facebook/orca/compose/MessageDraft;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/compose/MessageDraft;-><init>(Ljava/lang/String;Lcom/facebook/orca/attachments/MediaResource;)V

    goto :goto_1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 312
    if-eqz p1, :cond_1

    .line 313
    const-string v0, "imageAttachment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/MediaResource;

    .line 314
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->N:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 315
    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/attachments/MediaAttachment;)V

    .line 317
    sget-object v0, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    .line 318
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v0, "locationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    move-result-object v0

    .line 323
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(Lcom/facebook/orca/compose/ComposeFragment$LocationState;Landroid/location/Location;)V

    .line 325
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->O:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 585
    invoke-static {p1}, Lcom/facebook/orca/prefs/PrefKeys;->b(Ljava/lang/String;)Lcom/facebook/orca/prefs/PrefKey;

    move-result-object v1

    .line 586
    iget-object v2, p0, Lcom/facebook/orca/compose/ComposeFragment;->ak:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 587
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 589
    :cond_0
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->d(Landroid/os/Bundle;)V

    .line 333
    const-string v1, "imageAttachment"

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 334
    const-string v0, "locationState"

    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    invoke-virtual {v1}, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ah:Lcom/facebook/orca/attachments/MediaAttachment;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 346
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()V

    .line 347
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->ai:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeFragment$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeFragment$LocationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->an:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/facebook/orca/compose/ComposeFragment;->K()V

    .line 350
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->v()V

    .line 340
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment;->P:Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;->a()V

    .line 341
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/compose/ComposeFragment;->a(ZZ)V

    .line 342
    return-void
.end method
