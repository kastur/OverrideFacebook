.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 3
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 226
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->i(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->h(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->j(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->k(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/location/Location;Ljava/lang/String;I)V

    .line 232
    return-void
.end method

.method public final e_()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b0418

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->d(Z)V

    .line 238
    return-void
.end method
