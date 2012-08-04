.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$12;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$12;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$12;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 1108
    return-void
.end method
