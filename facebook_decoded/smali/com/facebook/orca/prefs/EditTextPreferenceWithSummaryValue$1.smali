.class Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;
.super Ljava/lang/Object;
.source "EditTextPreferenceWithSummaryValue.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;->b:Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;

    iput-object p2, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/prefs/PrefKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;->b:Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;

    invoke-static {v0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a(Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;)V

    .line 46
    :cond_0
    return-void
.end method
