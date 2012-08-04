.class Lcom/facebook/katana/activity/places/AddPlaceActivity$2;
.super Ljava/lang/Object;
.source "AddPlaceActivity.java"

# interfaces
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/AddPlaceActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 203
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->d(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->d(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->d(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$2;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->a(Lcom/facebook/katana/activity/places/AddPlaceActivity;Landroid/location/Location;Landroid/graphics/Bitmap;)V

    .line 209
    :cond_1
    return-void

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
