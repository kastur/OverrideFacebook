.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 570
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$3;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 571
    return-void
.end method
