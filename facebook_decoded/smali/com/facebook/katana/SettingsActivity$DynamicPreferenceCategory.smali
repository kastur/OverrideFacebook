.class Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "SettingsActivity.java"


# instance fields
.field private a:Landroid/preference/Preference;

.field private b:[Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 144
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 151
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->a:Landroid/preference/Preference;

    .line 158
    invoke-virtual {p0}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Landroid/preference/Preference;

    iput-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->b:[Landroid/preference/Preference;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->removeAll()V

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->a:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity$DynamicPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_2
    return-void
.end method
