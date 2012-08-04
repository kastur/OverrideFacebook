.class public Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaAdvancedPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/images/ImageCache;

.field private b:Lcom/facebook/orca/app/OrcaDataManager;

.field private c:Landroid/content/pm/PackageInfo;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/images/ImageCache;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a:Lcom/facebook/orca/images/ImageCache;

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    const-string v0, "/orca/advanced/build_version"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    sget v1, Lcom/facebook/orca/R$string;->preference_version_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b:Lcom/facebook/orca/app/OrcaDataManager;

    return-object v0
.end method

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    const-string v0, "/orca/advanced/clear_image_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$1;-><init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    return-void
.end method

.method private c(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const-string v0, "/orca/advanced/clear_thread_cache"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;-><init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 99
    return-void
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    const-string v0, "/orca/sms/sms_enabled"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$3;-><init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    return-void
.end method

.method private static e(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    const-string v0, "/orca/sms/sms_enabled"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->a(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/facebook/orca/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 49
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a:Lcom/facebook/orca/images/ImageCache;

    .line 50
    const-class v0, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/OrcaDataManager;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b:Lcom/facebook/orca/app/OrcaDataManager;

    .line 51
    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c:Landroid/content/pm/PackageInfo;

    .line 52
    const-class v0, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsPermitted;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d:Ljavax/inject/Provider;

    .line 54
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 55
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->e:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 57
    sget v0, Lcom/facebook/orca/R$xml;->preferences_advanced:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 60
    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->a(Landroid/preference/PreferenceScreen;)V

    .line 61
    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b(Landroid/preference/PreferenceScreen;)V

    .line 62
    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->c(Landroid/preference/PreferenceScreen;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->d(Landroid/preference/PreferenceScreen;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->e:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/orca/R$string;->preference_advanced_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 70
    return-void

    .line 66
    :cond_0
    invoke-static {v1}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->e(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "prefs_advanced"

    return-object v0
.end method
