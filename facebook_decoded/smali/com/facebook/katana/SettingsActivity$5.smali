.class Lcom/facebook/katana/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/katana/SettingsActivity$5;->a:Lcom/facebook/katana/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$5;->a:Lcom/facebook/katana/SettingsActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/katana/net/HttpOperation;->a(Landroid/content/Context;Z)V

    .line 439
    const/4 v0, 0x1

    return v0
.end method
