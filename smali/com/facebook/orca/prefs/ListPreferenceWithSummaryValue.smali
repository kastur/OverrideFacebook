.class public Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;
.super Landroid/preference/ListPreference;
.source "ListPreferenceWithSummaryValue.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 52
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 30
    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue$1;-><init>(Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 41
    iget-object v1, p0, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/prefs/ListPreferenceWithSummaryValue;->a()V

    .line 47
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 48
    return-void
.end method
