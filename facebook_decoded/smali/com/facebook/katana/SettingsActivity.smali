.class public Lcom/facebook/katana/SettingsActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Z


# instance fields
.field protected b:Z

.field private d:Lcom/facebook/katana/util/logging/InteractionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/SettingsActivity;->a:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/SettingsActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    .line 137
    return-void
.end method

.method private a(Ljava/lang/String;IIIIZ)Landroid/preference/CheckBoxPreference;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 724
    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 726
    if-lez p3, :cond_0

    .line 727
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 729
    :cond_0
    if-lez p4, :cond_1

    .line 730
    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 732
    :cond_1
    if-lez p5, :cond_2

    .line 733
    invoke-virtual {v0, p5}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 735
    :cond_2
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 737
    invoke-direct {p0, v0}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/preference/Preference;)V

    .line 739
    return-object v0
.end method

.method private a(Ljava/lang/String;IIIZ)Landroid/preference/CheckBoxPreference;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 717
    const v2, 0x7f0b031a

    const/4 v3, 0x0

    const v4, 0x7f0b0319

    const v5, 0x7f0b0318

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIIIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIZ)Landroid/preference/CheckBoxPreference;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 711
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIIIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    const/4 v3, 0x0

    const v4, 0x7f0b0330

    const v5, 0x7f0b0331

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIIIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1, p2, p3}, Lcom/facebook/katana/SettingsActivity;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 756
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    :goto_1
    return-object v0

    .line 755
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 1
    .parameter

    .prologue
    .line 597
    new-instance v0, Lcom/facebook/katana/SettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/facebook/katana/SettingsActivity$12;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 605
    return-void
.end method

.method private a(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity;->d:Lcom/facebook/katana/util/logging/InteractionLogger;

    new-instance v1, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2}, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;-><init>(Lcom/facebook/katana/SettingsActivity;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 594
    return-void
.end method

.method private a(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 611
    const-string v0, "vibrate"

    const v1, 0x7f0b0325

    const v2, 0x7f0b0324

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 617
    const-string v0, "use_led"

    const v1, 0x7f0b0323

    const v2, 0x7f0b0322

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 623
    new-instance v0, Landroid/preference/RingtonePreference;

    invoke-direct {v0, p0}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;)V

    .line 624
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 625
    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setKey(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setShowSilent(Z)V

    .line 627
    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setShowDefault(Z)V

    .line 628
    const v1, 0x7f0b0320

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setTitle(I)V

    .line 629
    const v1, 0x7f0b031f

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setSummary(I)V

    .line 630
    sget-object v1, Lcom/facebook/katana/SettingsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 631
    invoke-direct {p0, v0}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/preference/Preference;)V

    .line 633
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 636
    const-string v0, "notif_wall_posts"

    const v1, 0x7f0b0326

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 641
    new-instance v0, Lcom/facebook/orca/prefs/NotificationEnabledPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 644
    const-string v1, "orca_message_settings"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setKey(Ljava/lang/String;)V

    .line 645
    const v1, 0x7f0b0316

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->setTitle(I)V

    .line 646
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 649
    const-string v0, "notif_comments"

    const v1, 0x7f0b0329

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 654
    const-string v0, "notif_friend_requests"

    const v1, 0x7f0b0314

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 659
    const-string v0, "notif_friend_confirmations"

    const v1, 0x7f0b0327

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 664
    const-string v0, "notif_photo_tags"

    const v1, 0x7f0b0328

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 669
    const-string v0, "notif_event_invites"

    const v1, 0x7f0b0313

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 674
    const-string v0, "notif_nearby_friends"

    const v1, 0x7f0b032a

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 679
    const-string v0, "notif_app_requests"

    const v1, 0x7f0b032c

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 683
    const-string v0, "notif_groups"

    const v1, 0x7f0b032b

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 688
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    const-string v1, "continuous_import"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 690
    const-string v1, "android_continuous_import"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 691
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    :cond_1
    const-string v0, "continuous_import"

    const v1, 0x7f0b032e

    const v2, 0x7f0b032d

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 698
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/katana/SettingsActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->username:Ljava/lang/String;

    .line 779
    invoke-static {p0, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 780
    invoke-static {p0, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 783
    if-eqz v1, :cond_2

    .line 784
    if-eqz v0, :cond_1

    .line 785
    const v0, 0x7f0b0375

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 787
    :cond_1
    const v0, 0x7f0b0377

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 790
    :cond_2
    const v0, 0x7f0b0371

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 806
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    :goto_0
    return v0

    .line 809
    :cond_0
    sget-boolean v1, Lcom/facebook/katana/SettingsActivity;->c:Z

    if-eqz v1, :cond_1

    .line 810
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :cond_1
    invoke-static {p0}, Lcom/facebook/katana/Constants;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "do_not_crash"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 817
    sput-boolean v0, Lcom/facebook/katana/SettingsActivity;->c:Z

    goto :goto_0
.end method

.method private c()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    const v12, 0x7f0b04a0

    const v4, 0x7f0b031c

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/facebook/katana/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 214
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 215
    const v0, 0x7f0b0315

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 216
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    new-instance v7, Landroid/preference/ListPreference;

    invoke-direct {v7, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const v1, 0x7f0b030e

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const v1, 0x7f0b030f

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const v1, 0x7f0b0310

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const v1, 0x7f0b0311

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const v1, 0x7f0b0312

    invoke-virtual {p0, v1}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const-string v3, "30"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, "60"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v3, "120"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v3, "240"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string v3, "Every minute (beta-only option)"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 244
    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 247
    aget-object v3, v1, v5

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 249
    const-string v3, "polling_interval"

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 251
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "polling_interval"

    aget-object v8, v1, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/facebook/katana/SettingsActivity;->a([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    new-instance v3, Lcom/facebook/katana/SettingsActivity$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/katana/SettingsActivity$1;-><init>(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    new-instance v0, Lcom/facebook/orca/prefs/LocationServicesPreference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/prefs/LocationServicesPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    const v1, 0x7f0b032f

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/LocationServicesPreference;->setTitle(I)V

    .line 276
    const-string v1, "orca_location_services_settings"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/LocationServicesPreference;->setKey(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    invoke-static {p0}, Lcom/facebook/katana/service/vault/VaultManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance v1, Landroid/preference/ListPreference;

    invoke-direct {v1, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    const v3, 0x7f0b04a2

    invoke-virtual {p0, v3}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const v3, 0x7f0b04a3

    invoke-virtual {p0, v3}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const v3, 0x7f0b04a4

    invoke-virtual {p0, v3}, Lcom/facebook/katana/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    const-string v4, "MOBILE_RADIO"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v4, "WIFI_ONLY"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 295
    const-string v8, "vault_sync_mode"

    const-string v9, "OFF"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 304
    const-string v0, "vault_sync_mode"

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 306
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 307
    const v0, 0x7f0b04a1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 309
    new-instance v0, Lcom/facebook/katana/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/SettingsActivity$2;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 327
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_1
    new-instance v8, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;

    invoke-direct {v8, p0}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 332
    const v0, 0x7f0b0317

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 333
    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 336
    const-string v1, "notif"

    const v2, 0x7f0b031a

    const v3, 0x7f0b0319

    const v4, 0x7f0b0318

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/SettingsActivity;->a(Ljava/lang/String;IIIZ)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    .line 342
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    invoke-direct {p0, v8}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/preference/PreferenceCategory;)V

    .line 345
    new-instance v1, Lcom/facebook/katana/SettingsActivity$3;

    invoke-direct {v1, p0, v7, v8}, Lcom/facebook/katana/SettingsActivity$3;-><init>(Lcom/facebook/katana/SettingsActivity;Landroid/preference/ListPreference;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 360
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    :cond_2
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 363
    const v0, 0x7f0b031b

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 364
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    invoke-static {p0, v10}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/facebook/katana/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 372
    const-string v3, "sync_contacts"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 373
    const v3, 0x7f0b0321

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 374
    invoke-direct {p0, v0, v2}, Lcom/facebook/katana/SettingsActivity;->a(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V

    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 377
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    :cond_3
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 387
    const-string v4, "sandbox"

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 388
    const-string v4, "facebook.com"

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 389
    const-string v4, "Sandbox"

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    const-string v4, "e.g., dev.facebook.com, facebook.com"

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    const-string v4, "Sandbox"

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 392
    new-instance v4, Lcom/facebook/katana/SettingsActivity$4;

    invoke-direct {v4, p0, v2, v3}, Lcom/facebook/katana/SettingsActivity$4;-><init>(Lcom/facebook/katana/SettingsActivity;Landroid/preference/CheckBoxPreference;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 428
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    const-string v0, "check_certs"

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 431
    const-string v0, "Check SSL Certificates"

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    const-string v0, "Should be off when using your sandbox."

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    new-instance v0, Lcom/facebook/katana/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/facebook/katana/SettingsActivity$5;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    new-array v0, v11, [Ljava/lang/CharSequence;

    const-string v2, "Clear cookies"

    aput-object v2, v0, v10

    const-string v2, "Clear cache"

    aput-object v2, v0, v5

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 447
    new-array v0, v11, [Ljava/lang/CharSequence;

    const-string v2, "cookies"

    aput-object v2, v0, v10

    const-string v2, "cache"

    aput-object v2, v0, v5

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 448
    const-string v0, "Reset webviews"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 449
    const-string v0, "Webview control"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    const-string v0, "Clears webview cookies or caches"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    const-string v0, "Clear"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 452
    const-string v0, "Cancel"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 453
    const-string v0, "reset"

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/facebook/katana/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/facebook/katana/SettingsActivity$6;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 474
    const-string v2, "proxy"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 475
    const-string v2, "Proxy for Platform API requets"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    const-string v2, "The proxy is in host:port format. This setting does not affect the requests sent by Webviews"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    const-string v2, "Proxy"

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 479
    new-instance v2, Lcom/facebook/katana/SettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/facebook/katana/SettingsActivity$7;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 498
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 499
    const-string v2, "force_upgrade"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 500
    const-string v2, "Force Upgrade"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    invoke-static {p0}, Lcom/facebook/katana/FB4AVersion;->a(Landroid/content/Context;)Lcom/facebook/katana/FB4AVersion;

    move-result-object v2

    .line 503
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "Reset version number and kill the app?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/facebook/katana/SettingsActivity$8;

    invoke-direct {v5, p0, v2, p0}, Lcom/facebook/katana/SettingsActivity$8;-><init>(Lcom/facebook/katana/SettingsActivity;Lcom/facebook/katana/FB4AVersion;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "No"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current build version is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/facebook/katana/FB4AVersion;->c()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Force Upgrade will reset the last run version, and will kill the app.The app will upgrade on restart."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    new-instance v2, Lcom/facebook/katana/SettingsActivity$9;

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/SettingsActivity$9;-><init>(Lcom/facebook/katana/SettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 537
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 538
    const-string v2, "do_not_crash"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 539
    const-string v2, "Monkey mode"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    new-instance v2, Lcom/facebook/katana/SettingsActivity$10;

    invoke-direct {v2, p0}, Lcom/facebook/katana/SettingsActivity$10;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 549
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 550
    const-string v2, "Disables Logout, Crash, Report Bug, and this preference."

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 554
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 555
    const-string v0, "A/B Testing"

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 558
    sget-object v0, Lcom/facebook/katana/settings/RolloutSetting;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/settings/RolloutSetting;

    .line 559
    invoke-virtual {v0, p0}, Lcom/facebook/katana/settings/RolloutSetting;->a(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 563
    :cond_4
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 564
    const-string v2, "perfmarker_to_logcat"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 565
    const-string v2, "Show PerfMarker in LogCat"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v2, Lcom/facebook/katana/SettingsActivity$11;

    invoke-direct {v2, p0}, Lcom/facebook/katana/SettingsActivity$11;-><init>(Lcom/facebook/katana/SettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 576
    invoke-static {}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 577
    const-string v2, "PerfMarker timestamp and elapsed time are reported in LogCat"

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 584
    :cond_5
    invoke-static {}, Lcom/facebook/katana/util/StrictModeSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 585
    new-instance v0, Lcom/facebook/katana/util/StrictModeSettings;

    invoke-direct {v0}, Lcom/facebook/katana/util/StrictModeSettings;-><init>()V

    invoke-virtual {v0, v6}, Lcom/facebook/katana/util/StrictModeSettings;->a(Landroid/preference/PreferenceScreen;)V

    .line 588
    :cond_6
    return-object v6
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 821
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/SettingsActivity;->c:Z

    .line 822
    const-string v0, "do_not_crash"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 823
    const-string v0, "do_not_crash"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 824
    const-string v0, "check_certs"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 825
    const-string v0, "sandbox"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 826
    const-string v0, "do_not_crash"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "Monkey mode irrevocably on. Reinstall the app or clear application data to turn it off."

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->a(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0}, Lcom/facebook/katana/SettingsActivity;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/SettingsActivity;->b:Z

    .line 179
    invoke-static {p0}, Lcom/facebook/katana/SettingsActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/facebook/katana/SettingsActivity;->d()V

    .line 182
    :cond_0
    new-instance v0, Lcom/facebook/katana/util/logging/InteractionLogger;

    invoke-direct {v0, p0}, Lcom/facebook/katana/util/logging/InteractionLogger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/SettingsActivity;->d:Lcom/facebook/katana/util/logging/InteractionLogger;

    .line 183
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/facebook/katana/SettingsActivity;->b:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->setResult(I)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/SettingsActivity;->finish()V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;->onResume()V

    .line 189
    const-string v0, "sync_contacts"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/facebook/katana/SettingsActivity;->a(Lcom/facebook/katana/binding/AppSession;Landroid/preference/Preference;)V

    .line 193
    :cond_0
    return-void
.end method
