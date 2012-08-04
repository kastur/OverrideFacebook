.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->l(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->g(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$7;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->m(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V

    goto :goto_0
.end method
