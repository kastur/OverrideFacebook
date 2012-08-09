.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;
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
    .line 795
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->n(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 800
    if-nez v1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    const v1, 0x7f0b041a

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 809
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->a(Ljava/util/ArrayList;)Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$8;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "suggest_edits_frag"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
