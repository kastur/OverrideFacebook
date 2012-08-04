.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$13;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->startActivity(Landroid/content/Intent;)V

    .line 1161
    return-void
.end method
