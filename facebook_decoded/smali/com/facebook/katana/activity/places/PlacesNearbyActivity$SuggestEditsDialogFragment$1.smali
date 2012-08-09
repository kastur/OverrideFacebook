.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;
.super Lcom/facebook/katana/AlertDialogs$MenuOption;
.source "PlacesNearbyActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/model/FacebookPlace;

.field private synthetic b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Lcom/facebook/katana/model/FacebookPlace;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {p0}, Lcom/facebook/katana/AlertDialogs$MenuOption;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    const v1, 0x7f0b0419

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 865
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/facebook/katana/activity/places/SuggestPlaceInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->a:Lcom/facebook/katana/model/FacebookPlace;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 867
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 868
    return-void
.end method
