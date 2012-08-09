.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$4;
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
    .line 717
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$4;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$4;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->onLocationX(Landroid/view/View;)V

    .line 721
    return-void
.end method
