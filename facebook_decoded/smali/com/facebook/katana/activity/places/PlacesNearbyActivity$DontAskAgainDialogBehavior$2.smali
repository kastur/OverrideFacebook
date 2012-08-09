.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    iget-object v0, v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1230
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-static {v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->c(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Landroid/widget/Checkable;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;Z)Z

    .line 1234
    return-void
.end method
