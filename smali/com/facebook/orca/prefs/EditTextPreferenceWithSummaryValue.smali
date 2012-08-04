.class public Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;
.super Landroid/preference/EditTextPreference;
.source "EditTextPreferenceWithSummaryValue.java"


# instance fields
.field private a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->getText()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 37
    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue$1;-><init>(Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 48
    iget-object v1, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->b:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/orca/prefs/EditTextPreferenceWithSummaryValue;->a()V

    .line 55
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 56
    return-void
.end method
