.class public Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;
.super Lcom/facebook/orca/activity/FbPreferenceActivity;
.source "OrcaInternalPreferenceActivity.java"

# interfaces
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;


# instance fields
.field private a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbPreferenceActivity;->a(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/facebook/orca/R$layout;->orca_preferences:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->a(Landroid/app/Activity;)V

    .line 37
    sget v0, Lcom/facebook/orca/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 39
    sget v0, Lcom/facebook/orca/R$xml;->preferences_internal:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    const-string v1, "Internal"

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setTitle(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "prefs_internal"

    return-object v0
.end method
