.class Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;
.super Ljava/lang/Object;
.source "OrcaAdvancedPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;->a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity$2;->a:Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;

    invoke-static {v0}, Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;->b(Lcom/facebook/orca/prefs/OrcaAdvancedPreferenceActivity;)Lcom/facebook/orca/app/OrcaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaDataManager;->d()V

    .line 96
    const/4 v0, 0x1

    return v0
.end method
