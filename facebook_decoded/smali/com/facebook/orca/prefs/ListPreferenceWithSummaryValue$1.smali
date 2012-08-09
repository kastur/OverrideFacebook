.class Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;
.super Ljava/lang/Object;
.source "ListPreferenceWithSummaryValue.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;->b:Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;

    iput-object p2, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/facebook/orca/prefs/PrefKey;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;->b:Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;

    invoke-static {v0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a(Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;)V

    .line 39
    :cond_0
    return-void
.end method
