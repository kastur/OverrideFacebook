.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$1;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)V
    .locals 0
    .parameter

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$1;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;Z)Z

    .line 1220
    return-void
.end method
