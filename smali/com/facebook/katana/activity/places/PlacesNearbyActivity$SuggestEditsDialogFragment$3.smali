.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;
.super Lcom/facebook/katana/AlertDialogs$MenuOption;
.source "PlacesNearbyActivity.java"


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 894
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/facebook/katana/AlertDialogs$MenuOption;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 897
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    .line 898
    invoke-static {v0, v4}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Z)Z

    .line 899
    const-string v1, ""

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->b:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    const v3, 0x7f0b01b1

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 901
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPlace;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/PlaceSuggestions;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    move-result-object v1

    .line 903
    if-nez v1, :cond_0

    .line 904
    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->finish()V

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/method/PlaceSuggestions;->a(Ljava/util/List;)Lcom/facebook/katana/service/method/PlaceSuggestions;

    .line 908
    invoke-virtual {v1}, Lcom/facebook/katana/service/method/PlaceSuggestions;->h()Ljava/lang/String;

    goto :goto_0
.end method
