.class public Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaRootPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 62
    if-ne v0, p2, :cond_1

    .line 63
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v2, v3

    .line 71
    :cond_0
    :goto_1
    return v2

    .line 65
    :cond_1
    instance-of v4, v0, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 66
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 67
    goto :goto_1

    .line 60
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->a(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/facebook/orca/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a:Lcom/facebook/orca/cache/DataCache;

    .line 39
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 40
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 42
    sget v0, Lcom/facebook/orca/R$xml;->preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 45
    const-string v1, "/orca/advanced"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 48
    const-string v1, "/orca/internal"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 51
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/DataCache;->a()Lcom/facebook/orca/users/User;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/orca/users/User;->v()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    sget v1, Lcom/facebook/orca/R$string;->preference_title:I

    invoke-virtual {p0, v1}, Lcom/facebook/orca/prefs/OrcaRootPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "prefs_root"

    return-object v0
.end method
