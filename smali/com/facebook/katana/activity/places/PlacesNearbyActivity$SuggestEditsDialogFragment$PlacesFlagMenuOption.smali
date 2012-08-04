.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;
.super Lcom/facebook/katana/AlertDialogs$MenuOption;
.source "PlacesNearbyActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/lang/String;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/PlacesFlag$FlagType;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-direct {p0}, Lcom/facebook/katana/AlertDialogs$MenuOption;-><init>()V

    .line 842
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->a:Ljava/lang/String;

    .line 843
    iput-object p3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->b:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    .line 844
    iput-object p4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->c:Ljava/util/List;

    .line 845
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 848
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    .line 849
    invoke-static {v0, v4}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Z)Z

    .line 850
    const-string v1, ""

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    const v3, 0x7f0b01b1

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 852
    invoke-static {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity;->o(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->d:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;->b:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/service/method/PlacesFlag;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)Ljava/lang/String;

    .line 853
    return-void
.end method
