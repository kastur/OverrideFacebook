.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z

.field private synthetic c:Z

.field private synthetic d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    iput-boolean p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->a:Z

    iput-boolean p3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->b:Z

    iput-boolean p4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 960
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 961
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->b:Z

    if-nez v0, :cond_3

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_services_enable_sources_dont_ask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 971
    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->showDialog(I)V

    goto :goto_0

    .line 974
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->b:Z

    if-eqz v0, :cond_0

    .line 975
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->c:Z

    if-nez v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_services_turn_network_on_dont_ask"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 982
    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$9;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->showDialog(I)V

    goto :goto_0
.end method
