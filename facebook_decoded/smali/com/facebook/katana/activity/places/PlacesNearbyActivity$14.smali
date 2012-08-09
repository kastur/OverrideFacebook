.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$14;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1170
    return-void
.end method
