.class Lcom/facebook/katana/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:[Ljava/lang/CharSequence;

.field private synthetic b:[Ljava/lang/CharSequence;

.field private synthetic c:Lcom/facebook/katana/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/facebook/katana/SettingsActivity$1;->c:Lcom/facebook/katana/SettingsActivity;

    iput-object p2, p0, Lcom/facebook/katana/SettingsActivity$1;->a:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/facebook/katana/SettingsActivity$1;->b:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 262
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/facebook/katana/SettingsActivity$1;->c:Lcom/facebook/katana/SettingsActivity;

    iget-object v3, p0, Lcom/facebook/katana/SettingsActivity$1;->a:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/facebook/katana/SettingsActivity$1;->b:[Ljava/lang/CharSequence;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/facebook/katana/SettingsActivity;->a(Lcom/facebook/katana/SettingsActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$1;->c:Lcom/facebook/katana/SettingsActivity;

    iput-boolean v5, v0, Lcom/facebook/katana/SettingsActivity;->b:Z

    .line 265
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$1;->c:Lcom/facebook/katana/SettingsActivity;

    invoke-static {v0, p1, p2}, Lcom/facebook/katana/SettingsActivity;->a(Lcom/facebook/katana/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 266
    return v5
.end method
