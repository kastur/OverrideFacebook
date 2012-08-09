.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$11;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$11;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$11;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 1100
    return-void
.end method
