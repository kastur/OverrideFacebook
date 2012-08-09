.class Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$3;
.super Ljava/lang/Object;
.source "OrcaAdvancedPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$3;->a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$3;->a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
